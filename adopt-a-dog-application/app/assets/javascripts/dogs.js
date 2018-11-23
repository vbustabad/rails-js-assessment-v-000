$('.dogs.show').ready(function(){
  console.log("Document has been fully loaded.");
 
  var descriptionLink = document.getElementById('detailed-description');
  if (descriptionLink != null) {
    descriptionLink.addEventListener("click", getBreedDescription);
  }
});

$('.dogs.index').ready(function(){
  console.log("Document has been executed."); 

  var showBreedsButton = document.getElementById('show-breeds');
  if (showBreedsButton != null) {
    showBreedsButton.addEventListener("click", getListOfBreeds);
  }
});

function parseJSON(response) {
  return response.json()
}

function displayData(data) {
  console.log(data);
  const description = data[2][0];
  document.getElementById('dog-description').innerHTML = description;
  const url = data[3][0];
  const wikipediaLink = document.getElementById('wikipedia-link');
  wikipediaLink.innerHTML = "See full information.";
  wikipediaLink.href = url;
  wikipediaLink.target = "_blank";
}

function getBreedDescription(event) {
  event.preventDefault();
  const searchTerm = document.getElementById('dog-breed').dataset.breed;
  const searchURL = `https://en.wikipedia.org/w/api.php?action=opensearch&format=json&origin=*&search=${searchTerm}`;
  
  fetch(searchURL)
    .then(parseJSON)
    .then(displayData)
};

function getListOfBreeds() {
  $.get('/dogs.json', displayBreeds);
};

function displayBreeds(data) {
  const list = document.getElementById('list-of-breeds');
  data.dogs.forEach(function(dog){
    const listItem = document.createElement('li');
    listItem.textContent = dog.breed;
    list.append(listItem);
  })
};