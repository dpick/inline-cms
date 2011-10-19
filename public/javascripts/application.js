$(document).ready(function() {
  $(".alert-message").alert();
  $(".topbar").dropdown();
  $('#login input').attr('autocomplete','off');
  $("input:visible:enabled:first").focus();
  $('.edit').editable('textobject/save', {
    indicator : 'Saving...',
    tooltip   : 'Click to edit...',
    callback  : function(value, settings) {
      console.log('here');
    }
  });

  $('.edit_area').editable('textobject/save', { 
    type      : 'textarea',
    cancel    : 'Cancel',
    submit    : 'OK',
    tooltip   : 'Click to edit...',
  });

  $("body").css("display", "none");

  $("body").fadeIn(2000);

  $("a.transition").click(function(event){
      event.preventDefault();
      linkLocation = this.href;
      $("body").fadeOut(1000, redirectPage);
  });

  function redirectPage() {
      window.location = linkLocation;
  }
  

});
