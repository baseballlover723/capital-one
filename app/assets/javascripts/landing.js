$(document).ready(function(){
  if(document.getElementById("queryWrapper")) {
    document.getElementById('query').onkeypress = function(e){
      if (!e) e = window.event;
      var keyCode = e.keyCode || e.which;
      if (keyCode == '13'){ //enter key
        console.log("enter");
      }
    }
  }
});
