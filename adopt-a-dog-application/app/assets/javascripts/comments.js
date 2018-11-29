$('.comments.new').ready(function(){
  console.log("Document has been loaded.");

  const form = document.getElementById('new-comment-form');
  form.addEventListener("submit", function(event) {
    event.preventDefault();
    
    $.ajax({
      type: "POST",
      url: this.action,
      data: $(this).serialize(), 
      success: displayComment
    });
  })
});  

function displayComment(data) {
  console.log(data);
  const newComment = new Comment(data);
  const commentHTML = newComment.formatShowComment();
  $("#new-comment-information").html(commentHTML)
}

function Comment(data) {
  this.id = data.id;
  this.feedback = data.feedback;
  this.adoption = data.adoption;
  this.dog = data.dog;
  this.owner = data.owner
}

Comment.prototype.formatShowComment = function() {
  let commentHTML = `
  <p><strong>The feedback was submitted successfully.</strong></p>
  <p>Owner: ${this.owner}</p>
  <p>Dog: ${this.dog}</p>
  <p>Feedback: ${this.feedback}</p>
  `     
  
  return commentHTML;
}