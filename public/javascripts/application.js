$(document).ready(function() {
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
