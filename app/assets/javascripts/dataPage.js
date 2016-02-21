$(document).ready(function(){
  var createdHotList = false;
  var createdRegionList = false;
  initializeGraphs();
  $("#graphSelector").click(function(){
    document.getElementById("mapBody").style.display = "none";
    document.getElementById("hotBody").style.display = "none  ";
    document.getElementById("regionBody").style.display = "none";
    document.getElementById("similarBody").style.display = "none";
    document.getElementById("rightDisplay").style.display = "block";
  });
  $("#mapSelector").click(function(){
    document.getElementById("rightDisplay").style.display = "none";
    document.getElementById("hotBody").style.display = "none";
    document.getElementById("regionBody").style.display = "none";
    document.getElementById("similarBody").style.display = "none";
    document.getElementById("mapBody").style.display = "block";
    initializeMap();
  });
  $("#hotSelector").click(function(){
    document.getElementById("rightDisplay").style.display = "none";
    document.getElementById("mapBody").style.display = "none";
    document.getElementById("regionBody").style.display = "none";
    document.getElementById("similarBody").style.display = "none";
    document.getElementById("hotBody").style.display = "block";
    populateHotBuckets();
  });
  $("#regionSelector").click(function(){
    document.getElementById("rightDisplay").style.display = "none";
    document.getElementById("mapBody").style.display = "none";
    document.getElementById("hotBody").style.display = "none";
    document.getElementById("similarBody").style.display = "none";
    document.getElementById("regionBody").style.display = "block";
    regionCalculator();
  });
  $("#similarSelector").click(function(){
    document.getElementById("rightDisplay").style.display = "none";
    document.getElementById("mapBody").style.display = "none";
    document.getElementById("hotBody").style.display = "none";
    document.getElementById("regionBody").style.display = "none";
    document.getElementById("similarBody").style.display = "block";
    // regionCalculator();
  });

  function initializeGraphs(){
    if(document.getElementById("chartBody")){
      var canv = document.getElementById("lineGraph");
      canv.className = "graphs";
      var ctx1 = canv.getContext("2d");


  var bucketsCurrent = [0,0,0,0,0,0,0,0,0,0,0,0];
  var bucketsOld = [0,0,0,0,0,0,0,0,0,0,0,0];
  preparePurchaseGraph(bucketsCurrent, bucketsOld);




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
    var wrapper = document.getElementById('tableWrapper');
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
    wrapper.appendChild(tbl)
  }

  function preparePurchaseGraph(bucketsCurrent, bucketsOld){
    labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]


    for(var i =0; i< gon.graphPurchases.length; i++){
      var datebucket = parseFloat(gon.graphPurchases[i].purchase_date.split("-")[1] ) -1;
      var year = parseFloat(gon.graphPurchases[i].purchase_date.split("-")[0] );
      if(year > 2015 ){
        bucketsOld[datebucket] += parseFloat(gon.graphPurchases[i].amount);
      } else{
        bucketsCurrent[datebucket] += parseFloat(gon.graphPurchases[i].amount);
      }

    }
  }

  function populateHotBuckets(){
    if(document.getElementById("hotMap")){
      //populate buckets
      var merchantIdToName = {};
      var merchantsCounts = {};
      var merchantIdToIndex = {};

      for(var i =0; i< gon.merchants.length; i++){
        merchantIdToName[gon.merchants[i].id] = gon.merchants[i].name;
        merchantIdToIndex[gon.merchants[i].id] = i;
        merchantsCounts[gon.merchants[i].id] = 0;

      }

      for(var i =0; i< gon.purchases.length; i++){
        merchantsCounts[gon.purchases[i]["merchant_id"]]++;
      }
      var sortable = [];
      for (var i in merchantsCounts)
            sortable.push([merchantIdToName[i], merchantsCounts[i], merchantIdToIndex[i]])

      initializeHotMap(sortable.sort(function(a, b) {return b[1] - a[1]}));
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

  function initializeHotMap(merchantCounts){
    if(document.getElementById("hotMap")){
      if(!createdHotList){
        createHotList(merchantCounts);
        createdHotList = true;
      }
      var myLatLng = {lat: gon.merchants[merchantCounts[0][2]].lat, lng:  gon.merchants[merchantCounts[0][2]].lng};

      var map = new google.maps.Map(document.getElementById('hotMap'), {
        center: myLatLng,
        scrollwheel: true,
        zoom: 10
      });
      var infowindow = new google.maps.InfoWindow();
      var marker;

      for(var merchant=0; merchant<5; merchant++){

        var merch = gon.merchants[merchantCounts[merchant][2]];

        myLatLng = {lat: parseFloat(merch.lat), lng: parseFloat(merch.lng)};
        marker = new google.maps.Marker({position: myLatLng,map: map,title: merch.name});
        (function(marker, merchant) {
                        // add click event
                        google.maps.event.addListener(marker, 'click', function() {
                            infowindow = new google.maps.InfoWindow({
                                content: gon.merchants[merchantCounts[merchant][2]].name
                            });
                            infowindow.open(map, marker);
                        });
                    })(marker, merchant);
      }
    }
  }

  function createHotList(merchantCounts){
    if(document.getElementById("hotList")){
      var wrapper = document.getElementById('hotList');
      var tbl = document.createElement('table');
      tbl.style.width = '100%';
      tbl.setAttribute('border', '1');
      var tbdy = document.createElement('tbody');
      // Titles
      var tr = document.createElement('tr');

      var td = document.createElement('td');
      td.appendChild(document.createTextNode('Hot Merchants'))
      td.setAttribute('rowSpan', '1');
      tr.appendChild(td);

      var td = document.createElement('td');
      td.appendChild(document.createTextNode('Number of Transactions'))
      td.setAttribute('rowSpan', '1');
      tr.appendChild(td);


      tbdy.appendChild(tr);

      var count = 0;
      for(var i =0; i< merchantCounts.length; i++){
        // Create Table Row
          var tr = document.createElement('tr');

          var td = document.createElement('td');
          td.appendChild(document.createTextNode(merchantCounts[i][0]));

          td.setAttribute('rowSpan', '1');
          tr.appendChild(td)

          var td = document.createElement('td');
          td.appendChild(document.createTextNode(merchantCounts[i][1]))
          td.setAttribute('rowSpan', '1');
          tr.appendChild(td)
          if(count < 5){
            if(count % 2 == 0) tr.className = "hotMerchantEven";
            else tr.className = "hotMerchantOdd";
          }
          count++;

          tbdy.appendChild(tr);
      }
      tbl.appendChild(tbdy);
      wrapper.appendChild(tbl)
    }
  }

  function regionCalculator() {
    if(document.getElementById("regionBody")){
      generateRegionMap();
    }
  }




  function generateRegionMap() {
    // console.log("populate region table");
    // Run K-Means to generate clusters from # of cities, then get each's average 
    // cost of a transaction to estimate most/least expensive
    var merchantIdToName = {};
    var merchantsCounts = {};
    var merchantIdToIndex = {};

    for(var i =0; i< gon.merchants.length; i++){
      merchantIdToIndex[gon.merchants[i].id] = i;
    }


    numCities = 4;
    regionData = []
    for(var i=0; i < gon.purchases.length; i++){
      regionData.push([gon.merchants[merchantIdToIndex[gon.purchases[i]["merchant_id"]]].lat, gon.merchants[merchantIdToIndex[gon.purchases[i]["merchant_id"]]].lng, i ]);
    }

    clusterOptions = {
      "numberOfClusters" :3,
      "numberOfDimensions": 2
    }
    var clusters = getClusters(regionData, clusterOptions);

    console.log(clusters);
    

    for(var c in clusters){
      clusters[c]["avgCost"] = 0;
      var sum = 0;
      for(var d in clusters[c].data ){
        sum += parseInt(gon.purchases[clusters[c].data[d][2]].amount )
        // console.log(gon.purchases[clusters[c].data[d][2]].amount)
      }
      sum = sum / clusters[c].data.length;
      // console.log(sum)
      clusters[c]["avgCost"] = sum;
    }


    console.log(clusters);


    // Map stuff
    // if(!createdHotList){
    //     createHotList(merchantCounts);
    //     createdHotList = true;
    //   }

      var myLatLng = {lat: clusters[0].mean[0], lng:  clusters[0].mean[1]};

      var map = new google.maps.Map(document.getElementById('regionMap'), {
        center: myLatLng,
        scrollwheel: true,
        zoom: 5
      });

      var purchases = gon.purchases
      var merchants = gon.merchants

      for(var c in clusters){
        // var merch = gon.merchants[merchant];
        myLatLng = {lat: clusters[c].mean[0], lng: clusters[c].mean[1]};
        marker = new google.maps.Marker({position: myLatLng,map: map,title: "wheee titlehere"});
        (function(marker, i, clusters, purchases, merchants) {
                        // add click event
                        google.maps.event.addListener(marker, 'click', function() {
                            infowindow = new google.maps.InfoWindow({
                                content:  merchants[merchantIdToIndex[purchases[clusters[i].data[0][2]]["merchant_id"]]].city + ": " + clusters[i].avgCost.toFixed(2)
                            });
                            infowindow.open(map, marker);
                        });
                    })(marker, c, clusters, purchases, merchants);
      }


      if(!createdRegionList){
        createdRegionList = true;
        // Generate Table
        var wrapper = document.getElementById('regionList');
        var tbl = document.createElement('table');
        tbl.style.width = '100%';
        tbl.setAttribute('border', '1');
        var tbdy = document.createElement('tbody');
        // Titles
        var tr = document.createElement('tr');

        var td = document.createElement('td');
        td.appendChild(document.createTextNode('City'))
        td.setAttribute('rowSpan', '1');
        tr.appendChild(td);

        var td = document.createElement('td');
        td.appendChild(document.createTextNode('Average Purchase'))
        td.setAttribute('rowSpan', '1');
        tr.appendChild(td);


        tbdy.appendChild(tr);

        var count = 0;
        console.log(clusters)

        var sortable = [];
        // for (var i in clusters)
        //     sortable.push([merchantIdToName[i], merchantsCounts[i], merchantIdToIndex[i]])

        clusters.sort(function(a, b) {return b.avgCost - a.avgCost});
        console.log(clusters)
        for(var i =0; i<  clusters.length; i++){
          // Create Table Row
            var tr = document.createElement('tr');

            var td = document.createElement('td');
            td.appendChild(document.createTextNode(merchants[merchantIdToIndex[purchases[clusters[i].data[0][2]]["merchant_id"]]].city));
            td.setAttribute('rowSpan', '1');
            tr.appendChild(td)

            var td = document.createElement('td');
            td.appendChild(document.createTextNode(clusters[i].avgCost.toFixed(2)))
            td.setAttribute('rowSpan', '1');
            tr.appendChild(td)

            tbdy.appendChild(tr);
        }
        tbl.appendChild(tbdy);
        wrapper.appendChild(tbl)
    }
  }
















/* K Means Implementation by dimas at
 * https://github.com/shudima/dimas-kmeans
 */

function getClusters(data, options) {

  var numberOfClusters, distanceFunction, vectorFunction, minMaxValues, maxIterations, numberOfDimensions;

  if (!options || !options.numberOfClusters) { numberOfClusters = getNumberOfClusters(data.length); }
  else { numberOfClusters = options.numberOfClusters; }

  if (!options || !options.distanceFunction) { distanceFunction = getDistance; }
  else { distanceFunction = options.distanceFunction; }
  
  if (!options || !options.vectorFunction) { vectorFunction = defaultVectorFunction; }
    else { vectorFunction = options.vectorFunction; }
    
    if (!options || !options.maxIterations) { maxIterations = 1000; }
    else { maxIterations = options.maxIterations; }

  if (!options || !options.numberOfDimensions) { numberOfDimensions = getNumnerOfDimensions(data, vectorFunction); }
  else { numberOfDimensions = options.numberOfDimensions; }

  minMaxValues = getMinAndMaxValues(data, numberOfDimensions, vectorFunction);


  return getClustersWithParams(data, numberOfDimensions, numberOfClusters, distanceFunction, vectorFunction, minMaxValues, maxIterations).clusters;
}


function getClustersWithParams(data, numberOfDimensions ,numberOfClusters, distanceFunction, vectorFunction, minMaxValues, maxIterations) {
  
  var means = createRandomMeans(numberOfDimensions, numberOfClusters, minMaxValues);

  var clusters = createClusters(means);

  var prevMeansDistance = 999999;

    var numOfInterations = 0;
    var iterations = [];


  while(numOfInterations < maxIterations) {

    initClustersData(clusters);

    assignDataToClusters(data, clusters, distanceFunction, vectorFunction);

    updateMeans(clusters, vectorFunction);

    var meansDistance = getMeansDistance(clusters, vectorFunction, distanceFunction);

      iterations.push(meansDistance);
        // console.log(numOfInterations + ': ' + meansDistance );
        // console.log(clusters);
        numOfInterations++;
  }
  
  console.log(getMeansDistance(clusters, vectorFunction, distanceFunction));

    return { clusters: clusters, iterations: iterations };
}

function defaultVectorFunction(vector) {
  return vector;
}

function getNumnerOfDimensions(data, vectorFunction) {
    if (data[0]) {
        return vectorFunction(data[0]).length;
    }  
  return 0;
}

function getNumberOfClusters(n) {
  return Math.ceil(Math.sqrt(n/2));
}

function getMinAndMaxValues(data, numberOfDimensions, vectorFunction) {

  var minMaxValues = initMinAndMaxValues(numberOfDimensions);

  data.forEach(function (vector) {

    for (var i = 0; i < numberOfDimensions; i++) {
      
      if (vectorFunction(vector)[i] < minMaxValues.minValue[i]) {
        minMaxValues.minValue[i] = vectorFunction(vector)[i];
      }

      if(vectorFunction(vector)[i] > minMaxValues.maxValue[i]) {
        minMaxValues.maxValue[i] = vectorFunction(vector)[i];
      }
    };
  });


  return minMaxValues;
}


function initMinAndMaxValues(numberOfDimensions) {

  var result = { minValue : [], maxValue : [] }

  for (var i = 0; i < numberOfDimensions; i++) {
    result.minValue.push(9999);
    result.maxValue.push(-9999);
  };

  return result;
}


function printMeans(clusters) {
  var means = '';

  clusters.forEach(function (cluster) {
    means = means + ' [' + cluster.mean + ']'
  });

  console.log(means);
}

function getMeansDistance(clusters, vectorFunction, distanceFunction) {

  var meansDistance = 0;

  clusters.forEach(function (cluster) {

    cluster.data.forEach(function (vector) {

        meansDistance = meansDistance + Math.pow(distanceFunction(cluster.mean, vectorFunction(vector)), 2);
    });
  });


  return meansDistance;
}

function updateMeans(clusters, vectorFunction) {

  clusters.forEach(function (cluster) {
    updateMean(cluster, vectorFunction);

  });
}


function updateMean(cluster, vectorFunction) {

  var newMean = [];
  // console.log("oldmean: " + cluster.mean)
  for (var i = 0; i < cluster.mean.length; i++) {
    newMean.push(getMean(cluster.data, i, vectorFunction));
  };


  cluster.mean = newMean;
  // console.log("newmean: " + cluster.mean)

}

function getMean(data, index, vectorFunction) {
  var sum =  0;
  var total = data.length;

  if(total == 0) return 0;
  data.forEach(function (vector) {

      sum = sum + vectorFunction(vector)[index];
  });


  return sum / total;
}

function assignDataToClusters(data, clusters, distanceFunction, vectorFunction) {


  data.forEach(function (vector) {
      var cluster = findClosestCluster(vectorFunction(vector), clusters, distanceFunction);

      if(!cluster.data) cluster.data = [];
    // console.log(vector)
    cluster.data.push(vector);
  });
  for(var c in clusters){
    if(clusters[c].data.length == 0){
      // console.log("NO DATA EVERYONE PANIC")
      // console.log(data)
      var datalen = data.length;
      randex = Math.round(random(0,datalen))
      // console.log(randex)
      // console.log(data[randex])
      clusters[c].data.push(data[randex])
    }
  }
}


function findClosestCluster(vector, clusters, distanceFunction) {

  var closest = {};
  var minDistance = 9999999;

  clusters.forEach(function (cluster) {
    
    var distance = distanceFunction(cluster.mean, vector);
    if (distance < minDistance) {
      minDistance = distance;
      closest = cluster;
    };
  });

  return closest;
}

function initClustersData(clusters) {
  clusters.forEach(function (cluster) {
    cluster.data = [];
  });
}

function createClusters(means) {
  var clusters = [];

  means.forEach(function (mean) {
    var cluster = { mean : mean, data : []};

    clusters.push(cluster);
  });

  return clusters;
}

function createRandomMeans(numberOfDimensions, numberOfClusters, minMaxValues) {
  
  var means = [];


  for (var i = 0; i < numberOfClusters; i++) {
    means.push(createRandomPoint(numberOfDimensions, Math.min(minMaxValues.minValue[0], minMaxValues.minValue[1] ),
                                                     Math.max(minMaxValues.maxValue[0], minMaxValues.maxValue[1])));
  };

  return means;
}

function createRandomPoint(numberOfDimensions, minValue, maxValue) {
  var point = [];
  for (var i = 0; i < numberOfDimensions; i++) {
    point.push(random(minValue, maxValue));
  };
  
  return point;
}

function random (low, high) {

    return Math.random() * (high - low) + low;
}

function getDistance(vector1, vector2) {
  var sum = 0;

  for (var i = 0; i < vector1.length; i++) {
    sum = sum + Math.pow(vector1[i] - vector2[i],2)
  };

  return Math.sqrt(sum);

}

});
