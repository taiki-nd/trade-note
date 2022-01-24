document.addEventListener("turbolinks:load", function () {
  $(function(){
    $('#none').click(function(){
      $('#none').hide();
      $('.new').hide()
    });
  });
});