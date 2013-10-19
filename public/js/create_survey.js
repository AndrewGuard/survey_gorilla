$(document).ready(function () {

  // event.preventDefault();

  var startingNo = 0;
  var $node = "";

  // append counter to identifiers
  for( varCount = 0; varCount <= startingNo; varCount ++ ) {
    var displayCount = varCount +1;
    $node += '<p><label for="question'+displayCount+'">Question '+displayCount+': </label><input type="text" name="question'+displayCount+'" id="question'+displayCount+'"><span class="remove_question"><input type="submit" id="remove_question" value="Remove Question"</span></p>';
    event.preventDefault();
  }

  //add them to the DOM
  $('form').prepend($node);

  //remove a textfield
  $('#remove_question').on('click', function(){
    event.preventDefault();
    $(this).remove();
  });

  //add a new node
  $('#add_question').on('click', function(){
    event.preventDefault();
    varCount++;
    $node = '<p><label for="question'+varCount+'">Question '+varCount+': </label><input type="text" name="question'+varCount+'" id="question'+varCount+'"><span class="remove_question"><input type="submit" id="remove_question" value="Remove Question"</span></p>';
    $(this).parent().before($node);
  });
});
