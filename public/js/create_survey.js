$(document).ready(function () {

  var startingNo = 0;
  var $node = "";

  // append counter to identifiers
  for( varCount = 0; varCount <= startingNo; varCount ++ ) {
    var displayCount = varCount +1;

    // create first node
    $node = '<p class="question_row"><label for="question'+displayCount+'">Question '+displayCount+': </label><input id="question'+displayCount+'" class="question_textbox" type="text" name="question'+displayCount+'" placeholder=" e.g., How often do you feel sleepy?"><input type="submit" id="remove_question" class="remove_question" value="Remove Question"<br></p>';

    //add first node to the DOM
    $('#add_question').before($node);
  }

  //add a new node
  $('#add_question').on('click', function(){
    event.preventDefault();

    varCount++;
    $node = '<p class="question_row"><label for="question'+varCount+'">Question '+varCount+': </label><input id="question'+varCount+'" class="question_textbox" type="text" name="question'+varCount+'"><input type="submit" id="remove_question" class="remove_question" value="Remove Question"><br></p>';

    //add new node to the DOM
    $("#add_question").before($node);

    //remove a textfield
    $('.remove_question').on('click', function(event){
      event.preventDefault();
      $(this).parent().remove();
    })
  })
});
