$('.shelters.show').ready(function(){
    console.log("Document has been loaded onto the browser.");
    
    addButtonListener()
  });  
  
  function addDogsToDOM(data) {
    const dogsList = document.getElementById('list-of-dogs');
    const dogsSortedAlphabeticallyByName = data.dogs.sort((a, b) => a.name.localeCompare(b.name));
    const dogsAvailableForAdoptionAtShelter = dogsSortedAlphabeticallyByName.filter(dog => dog.adopted === false); 

    dogsAvailableForAdoptionAtShelter.forEach(function(dog) {
      const listItem = document.createElement('li');
      listItem.textContent = dog.name;
      dogsList.append(listItem)
    }) 
  };

  function addButtonListener() {
    const button = document.getElementById('dogs-button');
    console.log("Button is...", button)

    button.addEventListener("click", function(event) {
      event.preventDefault();

      const dogsList = document.getElementById('list-of-dogs');
      dogsList.innerHTML = "";

      const id = this.dataset.id;
      $.get(`/shelters/${id}.json`, addDogsToDOM)
    })
  }