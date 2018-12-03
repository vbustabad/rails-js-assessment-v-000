$('.shelters.show').ready(function(){
    console.log("Document has been loaded onto the browser.");
    
    getListOfDogs();
  });  

  function getListOfDogs() {
    $.get('/dogs.json', addDogsToDOM);
  }
  
  function addDogsToDOM(data) {
    const dogsList = document.getElementById('list-of-dogs');

    data.dogs.forEach(function(dog) {
      const listItem = document.createElement('li');
      listItem.textContent = dog.name;
      dogsList.append(listItem);
    })
  };