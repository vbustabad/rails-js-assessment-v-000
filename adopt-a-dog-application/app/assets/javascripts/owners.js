$('.owners.index').ready(function(){
  console.log("Document is ready.");

  getListOfOwners(); 
});

function getListOfOwners() {
  $.get('/owners.json', addOwnersToDOM);
}

function addOwnersToDOM(data) {
  const dogOwnersList = document.getElementById('list-of-owners');
  data.owners.forEach(function(owner) {
    const listItem = document.createElement('li');
    listItem.textContent = owner.name;
    dogOwnersList.append(listItem);
  })
};


