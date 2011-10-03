$(document).ready(function() {
  $(".alert-message").alert();
  $(".topbar").dropdown();
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
