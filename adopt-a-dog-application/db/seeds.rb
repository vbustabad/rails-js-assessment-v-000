# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

owner_1 = Owner.create(name: "John Smith", phone_number: 5555555555, email_address: "johnsmith@gmail.com", physical_address: "233 Belmont Avenue, Philadelphia, Pennsylvania 77777")
owner_2 = Owner.create(name: "Priscilla Li", phone_number: 4444444444, email_address: "pli@hotmail.com", physical_address: "555 Rose Street, New York City, New York 88888")

shelter_1 = Shelter.create(name: "New England Animal Shelter", physical_address: "333 Pennsylvania Lane, Boston, Massachusetts 99999")
shelter_2 = Shelter.create(name: "Northeastern Animal Shelter", physical_address: "444 Belvedere Street, Providence, Rhode Island 55555")

Dog.create(name: "Max", age: 4, breed: "Schnauzer", traits: "intelligent", weight: 16, shelter: shelter_1)
Dog.create(name: "Mickey", age: 8, breed: "Cocker Spaniel", traits: "trustworthy", weight: 30, shelter: shelter_1)
Dog.create(name: "Bella", age: 2, breed: "Labrador Retriever", traits: "sociable", weight: 60, shelter: shelter_1)
Dog.create(name: "Sophie", age: 5, breed: "Beagle", traits: "playful", weight: 21, shelter: shelter_1)
Dog.create(name: "Duke", age: 3, breed: "Maltese", traits: "affectionate", weight: 8, shelter: shelter_1)

User.create(name: "Mary Zimmer", email: "maryzimmer@gmail.com", password: "ilovedogs", admin: false)
User.create(name: "John Smith", email: "johnsmith@gmail.com", password: "dogsarethebest", admin: false)
User.create(name: "Laura Rodriguez", email: "laurarodriguez@gmail.com", password: "dogsaremyfavorite", admin: true)
User.create(name: "Anthony Brown", email: "anthonybrown@gmail.com", password: "myfavoritepetisadog", admin: true)
User.create(name: "Priscilla Li", email: "priscillali@gmail.com", password: "myfirstpetwasadog", admin: false)
