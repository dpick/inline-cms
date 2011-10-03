$(document).ready(function() {
  $(".alert-message").alert()

  $('.edit').editable('textobject/save', {
    indicator : 'Saving...',
    tooltip   : 'Click to edit...',
  });

  $('.edit_area').editable('textobject/save', { 
    type      : 'textarea',
    cancel    : 'Cancel',
    submit    : 'OK',
    tooltip   : 'Click to edit...',
  });
});
