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

  function initializeGraphs(){
    if(document.getElementById("chartBody")){
      var canv = document.getElementById("lineGraph");
      canv.className = "graphs";
      var ctx1 = canv.getContext("2d");
      var data = {
          labels: ["January", "February", "March", "April", "May", "June", "July"],
          datasets: [
              {
                  label: "My First dataset",
                  fillColor: "rgba(220,220,220,0.2)",
                  strokeColor: "rgba(220,220,220,1)",
                  pointColor: "rgba(220,220,220,1)",
                  pointStrokeColor: "#fff",
                  pointHighlightFill: "#fff",
                  pointHighlightStroke: "rgba(220,220,220,1)",
                  data: [65, 59, 80, 81, 56, 55, 40]
              },
              {
                  label: "My Second dataset",
                  fillColor: "rgba(151,187,205,0.2)",
                  strokeColor: "rgba(151,187,205,1)",
                  pointColor: "rgba(151,187,205,1)",
                  pointStrokeColor: "#fff",
                  pointHighlightFill: "#fff",
                  pointHighlightStroke: "rgba(151,187,205,1)",
                  data: [28, 48, 40, 19, 86, 27, 90]
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
    }
  }

  function initializeMap(){
    if(document.getElementById("map")){
      var myLatLng = {lat: -25.363, lng: 131.044};

      var map = new google.maps.Map(document.getElementById('map'), {
        center: myLatLng,
        scrollwheel: true,
        zoom: 5
      });
      var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        title: 'Hello World!'
      });
    }
  }
});
