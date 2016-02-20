$(document).ready(function(){
  initializeGraphs();
  $("#graphSelector").click(function(){
    document.getElementById("mapBody").style.display = "none";
    document.getElementById("chartBody").style.display = "block";
  });
  $("#mapSelector").click(function(){
    document.getElementById("chartBody").style.display = "none";
    document.getElementById("mapBody").style.display = "block";
    initializeMap();
  });
  console.log("This user's accounts:")
  console.log(gon.accounts)
  console.log("gon.graphBills");
  console.log(gon.graphBills);
    console.log("gon.graphDeposit");
  console.log(gon.graphDeposit);
    console.log("gon.graphPurchases");
  console.log(gon.graphPurchases);

  console.log("payer/payee transfers");
  console.log(gon.graphPayerTransfers);
  console.log(gon.graphPayeeTransfers);

  console.log(gon.graphWithdraws);
  function initializeGraphs(){
    if(document.getElementById("chartBody")){
      var canv = document.getElementById("lineGraph");
      canv.className = "graphs";
      var ctx1 = canv.getContext("2d");


  var bucketsCurrent = [0,0,0,0,0,0,0,0,0,0,0,0];
  var bucketsOld = [0,0,0,0,0,0,0,0,0,0,0,0];
  preparePurchaseGraph(bucketsCurrent, bucketsOld);

  console.log(bucketsCurrent)

      var data = {
    labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
    datasets: [
        {
            label: "My First dataset",
            fillColor: "rgba(220,220,220,0.2)",
            strokeColor: "rgba(220,220,220,1)",
            pointColor: "rgba(220,220,220,1)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(220,220,220,1)",
            data: bucketsOld
        },
        {
            label: "My Second dataset",
            fillColor: "rgba(151,187,205,0.2)",
            strokeColor: "rgba(151,187,205,1)",
            pointColor: "rgba(151,187,205,1)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(151,187,205,1)",
            data: bucketsCurrent
        }
    ]
};
      var options = {

        ///Boolean - Whether grid lines are shown across the chart
        scaleShowGridLines : true,

        //String - Colour of the grid lines
        scaleGridLineColor : "rgba(0,0,0,.05)",

        //Number - Width of the grid lines
        scaleGridLineWidth : 1,

        scaleOverride: false,

        //Boolean - Whether to show horizontal lines (except X axis)
        scaleShowHorizontalLines: true,

        //Boolean - Whether to show vertical lines (except Y axis)
        scaleShowVerticalLines: true,

        //Boolean - Whether the line is curved between points
        bezierCurve : true,

        //Number - Tension of the bezier curve between points
        bezierCurveTension : 0.4,

        //Boolean - Whether to show a dot for each point
        pointDot : true,

        //Number - Radius of each point dot in pixels
        pointDotRadius : 4,

        //Number - Pixel width of point dot stroke
        pointDotStrokeWidth : 1,

        //Number - amount extra to add to the radius to cater for hit detection outside the drawn point
        pointHitDetectionRadius : 20,

        //Boolean - Whether to show a stroke for datasets
        datasetStroke : true,

        //Number - Pixel width of dataset stroke
        datasetStrokeWidth : 2,

        //Boolean - Whether to fill the dataset with a colour
        datasetFill : true,

        //String - A legend template
        legendTemplate : "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].strokeColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>"

      };
      var lineChart1 = new Chart(ctx1).Line(data, options);
      canv.className = "graphs";

      generatePurchaseTable();

    }
  }

  function generatePurchaseTable(){
    var body = document.getElementsByTagName('body')[0];
    var tbl = document.createElement('table');
    tbl.style.width = '100%';
    tbl.setAttribute('border', '1');
    var tbdy = document.createElement('tbody');
    // Titles
    var tr = document.createElement('tr');

    var td = document.createElement('td');
    td.appendChild(document.createTextNode('Purchase Description'))
    td.setAttribute('rowSpan', '1');
    tr.appendChild(td);

    var td = document.createElement('td');
    td.appendChild(document.createTextNode('Amount'))
    td.setAttribute('rowSpan', '1');
    tr.appendChild(td);

    var td = document.createElement('td');
    td.appendChild(document.createTextNode('Date Purchased'))
    td.setAttribute('rowSpan', '1');
    tr.appendChild(td);

    tbdy.appendChild(tr);


    for(var i =0; i< gon.graphPurchases.length; i++){
      // Create Table Row
        var tr = document.createElement('tr');

        var td = document.createElement('td');
        td.appendChild(document.createTextNode(gon.graphPurchases[i].description))
        td.setAttribute('rowSpan', '1');
        tr.appendChild(td)

        var td = document.createElement('td');
        td.appendChild(document.createTextNode(gon.graphPurchases[i].amount))
        td.setAttribute('rowSpan', '1');
        tr.appendChild(td)

        var td = document.createElement('td');
        td.appendChild(document.createTextNode(gon.graphPurchases[i].purchase_date.split("T")[0]))
        td.setAttribute('rowSpan', '1');
        tr.appendChild(td)
       
        tbdy.appendChild(tr);
    }
    tbl.appendChild(tbdy);
    body.appendChild(tbl)
  }

  function preparePurchaseGraph(bucketsCurrent, bucketsOld){
    labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    

    for(var i =0; i< gon.graphPurchases.length; i++){
      var datebucket = parseInt(gon.graphPurchases[i].purchase_date.split("-")[1] );
      var year = parseInt(gon.graphPurchases[i].purchase_date.split("-")[0] );
      if(year < 2015 ){
        bucketsOld[datebucket] += parseInt(gon.graphPurchases[i].amount);
      } else{ 
        bucketsCurrent[datebucket] += parseInt(gon.graphPurchases[i].amount);
      }

    }
  }

  function initializeMap(){
    if(document.getElementById("map")){
      var myLatLng = {lat: gon.merchants[0].lat, lng: gon.merchants[0].lng};

      var map = new google.maps.Map(document.getElementById('map'), {
        center: myLatLng,
        scrollwheel: true,
        zoom: 5
      });
      var infowindow = new google.maps.InfoWindow();
      var marker;
      for(var merchant in gon.merchants){
        var merch = gon.merchants[merchant];
        myLatLng = {lat: parseFloat(merch.lat), lng: parseFloat(merch.lng)};
        marker = new google.maps.Marker({position: myLatLng,map: map,title: merch.category});
        (function(marker, i) {
                        // add click event
                        google.maps.event.addListener(marker, 'click', function() {
                            infowindow = new google.maps.InfoWindow({
                                content: 'Hello, World!!'
                            });
                            infowindow.open(map, marker);
                        });
                    })(marker, merchant);
      }

      for(var merchant in gon.atms){
        var atm = gon.atms[merchant];
        myLatLng = {lat: parseFloat(atm.lat), lng: parseFloat(atm.lng)};
        marker = new google.maps.Marker({position: myLatLng,map: map,title: "ATM"});
        (function(marker, i) {
                        // add click event
                        google.maps.event.addListener(marker, 'click', function() {
                            infowindow = new google.maps.InfoWindow({
                                content: 'Hello, World!!'
                            });
                            infowindow.open(map, marker);
                        });
                    })(marker, merchant);
      }
    }
  }
console.log(gon.transfers)

});

