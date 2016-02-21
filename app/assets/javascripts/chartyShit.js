$(document).ready(function(){

  var totalSize = 0; 

  var colors = {
    "Money In": "#2ECC71",
    "Money Out": "#E74C3C",
    "Deposit": "#00B16A",
    "Withdrawl": "#DD2C00",
    "Purchase": "#CF000F",
    "Transfer In": "#049372",
    "Transfer Out": "#B71C1C",
    "Monitary Transactions": "#FFFFFF"
  };

  var width = 480 * 1.5,
      height =  350 * 1.5,
      radius = Math.min(width, height) / 2;

  var x = d3.scale.linear()
      .range([0, 2 * Math.PI]);

  var y = d3.scale.sqrt()
      .range([0, radius]);

  var svg = d3.select("#solarGraph").append("svg")
      .attr("width", width)
      .attr("height", height + 50)
      .append("g")
      .attr("id", "container")
      .attr("transform", "translate(" + width / 2 + "," + (height / 2 + 10) + ")");

   svg.append("svg:circle")
      .attr("r", radius)
      .style("opacity", 0);

  var partition = d3.layout.partition()
      .sort(null)
      .value(function(d) { return 1; });

  var arc = d3.svg.arc()
      .startAngle(function(d) { return Math.max(0, Math.min(2 * Math.PI, x(d.x))); })
      .endAngle(function(d) { return Math.max(0, Math.min(2 * Math.PI, x(d.x + d.dx))); })
      .innerRadius(function(d) { return Math.max(0, y(d.y)); })
      .outerRadius(function(d) { return Math.max(0, y(d.y + d.dy)); });

  // Keep track of the node that is currently being displayed as the root.
  var node;

  d3.json("flare.json", function(error, root) {
    node = root;
    var path = svg.datum(root).selectAll("path")
        .data(partition.nodes)
      .enter().append("path")
        .attr("d", arc)
        .on("click", click)
        .on("mouseover", mouseover)
        .each(stash).style("fill", function(d) { 
            if(colors[d.name] != null) {
              return colors[d.name];
            } else{
              return colors[d.parent.name];
            }});

       d3.select("#container").on("mouseleave", mouseleave);

    for(var childIndex = 0; childIndex < path.node().__data__.children[0].children[0].value; childIndex++) {
      totalSize += path.node().__data__.children[0].children[0].children[childIndex].size;
    }
    for(var childIndex = 0; childIndex < path.node().__data__.children[0].children[1].value; childIndex++) {
      totalSize += path.node().__data__.children[0].children[1].children[childIndex].size;
    }
    for(var childIndex = 0; childIndex < path.node().__data__.children[1].children[0].value; childIndex++) {
      totalSize += path.node().__data__.children[1].children[0].children[childIndex].size;
    }
    for(var childIndex = 0; childIndex < path.node().__data__.children[1].children[1].value; childIndex++) {
      totalSize += path.node().__data__.children[1].children[1].children[childIndex].size;
    }
    for(var childIndex = 0; childIndex < path.node().__data__.children[1].children[2].value; childIndex++) {
      totalSize += path.node().__data__.children[1].children[2].children[childIndex].size;
      //findColors(path.node().__data__.children[1].children[2].children[childIndex].name);
    }

    // setTimeout(function(){
    //   path.style("fill", function(d) { 
    //         if(colors[d.name] != null) {
    //           return colors[d.name];
    //         } else{
    //           if(d.parent.name == "Purchase") {
    //             return colors[d.parent.name];
    //           } else {
    //             return colors[d.parent.name];
    //           }
    //         }})
    // }, 3000);
    

    var value = this.value === "count"
          ? function() { return 1; }
          : function(d) { return d.size; };

      path.data(partition.value(value).nodes).transition().duration(1000).attrTween("d", arcTweenData);

    function click(d) {
      node = d;
      path.transition()
        .duration(1000)
        .attrTween("d", arcTweenZoom(d));
    };

  function mouseover(d) {
    var percentage = (100 * d.value / totalSize).toPrecision(3);
    var percentageString = percentage + "%";
    if (percentage < 0.1) {
      percentageString = "< 0.1%";
    }
    d3.select("#percentage")
        .text(percentageString);

    d3.select("#explanation")
        .style("visibility", "");
    d3.select("#nameofthing").text(d.name);

    var sequenceArray = getAncestors(d);
    updateBreadcrumbs(sequenceArray, percentageString);

    // Fade all the segments.
    d3.selectAll("path")
        .style("opacity", 0.3);

    // Then highlight only those that are an ancestor of the current segment.
    svg.selectAll("path")
        .filter(function(node) {
              return (sequenceArray.indexOf(node) > -1);
            })
        .style("opacity", 1);
  };

  var b = {
    w: 75, h: 30, s: 3, t: 10
  };

  function mouseleave(d) {

    // Hide the breadcrumb trail
    // d3.select("#trail")
    //     .style("visibility", "hidden");

    // Deactivate all segments during transition.
    //d3.selectAll("path").on("mouseover", null);

    // Transition each segment to full opacity and then reactivate it.
    // d3.selectAll("path")
    //     .transition()
    //     .duration(1000)
    //     .style("opacity", 1);
        // .each("end", function() {
        //         d3.select(this).on("mouseover", mouseover);
        //       });

    // d3.select("#explanation")
    //     .style("visibility", "hidden");
  }


 // function findColors(itemName) {
 //        var req = new XMLHttpRequest();
 //        req.onload = function() {
 //          // console.log(this.response);
 //          // console.log(this.response.items[0].link);
 //          // var colorThief = new ColorThief();
 //          // console.log(colorThief.getColor(this.response.items[0].image.thumbnailLink));

 //            // var req = new XMLHttpRequest();
 //            // req.onload = function() {
 //            // //   console.log(this.response.body);
 //            //     var colorThief = new ColorThief();
 //            //     console.log(colorThief.getColor(this.response.getElementsByTagName("img")[0]));
 //            // // };
 //            // req.open("GET", this.response.items[0].link);
 //            // req.responseType = "jsonp";
 //            // req.setRequestHeader('X-Custom-Header', 'value');
 //            // req.send(); 



 //            // convertDataURLToImageData(
 //            //     this.response.items[0].link,
 //            //     function(imageData){
 //            //          // Do something with imageData
 //            //         var colorThief = new ColorThief();
 //            //         console.log(colorThief.getColor(this.response.items[0].image.thumbnailLink));
 //            //     }
 //            // )

 //          var formData = new FormData();
 //          formData.append("image_url", "http://labs.tineye.com/color/f4f3c89b2decf4a13036f139462a1659a04e66e6?ignore_background=True&width=250&color_format=hex&ignore_interior_background=True&height=250");
 //          formData.append("submitted", 1)
 //          var request = new XMLHttpRequest();
 //          request.onload = function() {
 //            console.log(this.response);
 //          }
 //          request.open("POST", "http://www.cssdrive.com/imagepalette/index.php");
 //          request.send(formData);

 //        };
 //        req.open("GET", 'https://www.googleapis.com/customsearch/v1?key=AIzaSyAoab-xN6AT4B_3sjWYVoU9T1MBbZu782M&cx=011526180547357920005:hrzlsj6oggw&q=' + 'chipotle' + '&searchType=image&fileType=jpg&imgSize=small&alt=json');
 //        req.responseType = "json";
 //        req.send();        
 //    }

 //  function convertDataURLToImageData(dataURL, callback) {
 //    if (dataURL !== undefined && dataURL !== null) {
 //        var canvas, context, image;
 //        canvas = document.createElement('canvas');
 //        canvas.width = 470;
 //        canvas.height = 470;
 //        context = canvas.getContext('2d');
 //        image = new Image();
 //        image.src = dataURL + '?' + new Date().getTime();
 //        image.crossOrigin = 'anonymous';
 //        image.addEventListener('load', function(){
 //            context.drawImage(image, 0, 0, canvas.width, canvas.height);
 //            callback(context.getImageData(0, 0, canvas.width, canvas.height));
 //        }, false);
 //      }
 //  }



  function breadcrumbPoints(d, i) {
    var points = [];
    points.push("0,0");
    points.push(b.w + ",0");
    points.push(b.w + b.t + "," + (b.h / 2));
    points.push(b.w + "," + b.h);
    points.push("0," + b.h);
    if (i > 0) { // Leftmost breadcrumb; don't include 6th vertex.
      points.push(b.t + "," + (b.h / 2));
    }
    return points.join(" ");
  }

  function updateBreadcrumbs(nodeArray, percentageString) {

    // Data join; key function combines name and depth (= position in sequence).
    var g = d3.select("#trail")
        .selectAll("g")
        .data(nodeArray, function(d) { return d.name + d.depth; });

    // Add breadcrumb and label for entering nodes.
    var entering = g.enter().append("svg:g");

    entering.append("svg:polygon")
        .attr("points", breadcrumbPoints)
        .style("fill", function(d) { 
             if(colors[d.name] != null) {
              return colors[d.name];
            } else{
              return colors[d.parent.name];
            }});

    entering.append("svg:text")
        .attr("x", (b.w + b.t) / 2)
        .attr("y", b.h / 2)
        .attr("dy", "0.35em")
        .attr("text-anchor", "middle")
        .text(function(d) { return d.name; });

    // Set position for entering and updating nodes.
    g.attr("transform", function(d, i) {
      return "translate(" + i * (b.w + b.s) + ", 0)";
    });

    // Remove exiting nodes.
    g.exit().remove();

    // Now move and update the percentage at the end.
    d3.select("#trail").select("#endlabel")
        .attr("x", (nodeArray.length + 0.5) * (b.w + b.s))
        .attr("y", b.h / 2)
        .attr("dy", "0.35em")
        .attr("text-anchor", "middle")
        .text(percentageString);

    // Make the breadcrumb trail visible, if it's hidden.
    d3.select("#trail")
        .style("visibility", "");

  }


  function getAncestors(node) {
    var path = [];
    var current = node;
    while (current.parent) {
      path.unshift(current);
      current = current.parent;
    }
    return path;
  };
    
  });

  d3.select(self.frameElement).style("height", height + "px");

  // Setup for switching data: stash the old values for transition.
  function stash(d) {
    d.x0 = d.x;
    d.dx0 = d.dx;
  }

  // When switching data: interpolate the arcs in data space.
  function arcTweenData(a, i) {
    var oi = d3.interpolate({x: a.x0, dx: a.dx0}, a);
    function tween(t) {
      var b = oi(t);
      a.x0 = b.x;
      a.dx0 = b.dx;
      return arc(b);
    }
    if (i == 0) {
     // If we are on the first arc, adjust the x domain to match the root node
     // at the current zoom level. (We only need to do this once.)
      var xd = d3.interpolate(x.domain(), [node.x, node.x + node.dx]);
      return function(t) {
        x.domain(xd(t));
        return tween(t);
      };
    } else {
      return tween;
    }
  }

  // When zooming: interpolate the scales.
  function arcTweenZoom(d) {
    var xd = d3.interpolate(x.domain(), [d.x, d.x + d.dx]),
        yd = d3.interpolate(y.domain(), [d.y, 1]),
        yr = d3.interpolate(y.range(), [d.y ? 20 : 0, radius]);
    return function(d, i) {
      return i
          ? function(t) { return arc(d); }
          : function(t) { x.domain(xd(t)); y.domain(yd(t)).range(yr(t)); return arc(d); };
    };
  }
});