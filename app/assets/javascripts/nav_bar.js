
$(document).ready(function() {
  $("#side-menu").hide();
  $(".nav-bar-option").hover(function() {
    $(this).css("background-color", "black");
  }, function(){
    $(this).css("background-color", "rgba(0,0,0,0)");
  });
  $("#side-menu-icon").click(function(){
    $("#side-menu").show("slow");
  });
  $(".side-menu-option").click(function(){
    $("#side-menu").hide("slow");
  });
});
