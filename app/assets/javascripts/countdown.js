$(document).ready(function(){
  var ta = $("textarea#micropost_content");
  var remaining = $("#micropost_remaining");
  ta.on("input", function(){
    remaining.text(140 - ta.val().length);
  }).trigger("input");
})