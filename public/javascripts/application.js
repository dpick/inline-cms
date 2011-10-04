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
});
