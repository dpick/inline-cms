$(document).ready(function() {
  $(".alert-message").alert();
  $(".topbar").dropdown();
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
