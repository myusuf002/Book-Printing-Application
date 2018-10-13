$(document).ready(function(){
  $("#resetBtn").click(function(){
    $('#form input[type="text"]').val("");
    $('#form input[type="password"]').val("");
    $('#form input[type="email"]').val("");
    $('#form input[type="radio"]').prop('checked', false);
  });
});
