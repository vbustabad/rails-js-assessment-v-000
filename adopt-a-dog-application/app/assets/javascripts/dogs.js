$(document).ready(function() {
  console.log("Document has been fully loaded.");
});

$('#detailed-description').on('click', function(event) {
  var searchTerm = $('#searchTerm').val()
  var url = "https://en.wikipedia.org/w/api.php?action=opensearch&search=" + searchTerm + "&format=json&callback=?";
  
  $.ajax({
    url: url,
    type: "GET",
    data: data,
    dataType: 'json',
  }).done(function(data) {
    $("#detailed-description").append(data);
    alert("Data was successfully retrieved.");
  }).fail(function() {
    alert("Unable to retrieve data.");
  })
});

$('#list-of-characteristics').on('click', function(event) {
  
    $.ajax({
      url: url,
      data: data,
      success: success,
      dataType: dataType
    }).done(function(data) {
      $("#list-of-characteristics").append(data);
      alert("Data was successfully retrieved.");
    }).fail(function() {
      alert("Unable to retrieve data.");
    })
  });


