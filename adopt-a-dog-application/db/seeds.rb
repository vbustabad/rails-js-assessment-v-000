# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dog.create(name: "Max", age: 4, breed: "Schnauzer", traits: "intelligent", weight: 16)
Dog.create(name: "Mickey", age: 8, breed: "Cocker Spaniel", traits: "trustworthy", weight: 30)
Dog.create(name: "Bella", age: 2, breed: "Labrador Retriever", traits: "sociable", weight: 60)
Dog.create(name: "Sophie", age: 5, breed: "Beagle", traits: "playful", weight: 21)
Dog.create(name: "Duke", age: 3, breed: "Maltese", traits: "affectionate", weight: 8)

User.create(name: "Mary Zimmer", password_digest: "ilovedogs", admin: false)
User.create(name: "John Smith", password_digest: "dogsarethebest", admin: false)
User.create(name: "Laura Rodriguez", password_digest: "dogsaremyfavorite", admin: true)
User.create(name: "Anthony Brown", password_digest: "myfavoritepetisadog", admin: true)
User.create(name: "Priscilla Li", password_digest: "myfirstpetwasadog", admin: false)

Owner.create(name: "John Smith", phone_number: 555-555-5555, email_address: johnsmith@gmail.com, physical_address: 233 Belmont Avenue, Philadelphia, Pennsylvania 77777)
Owner.create(name: "Priscilla Li", phone_number: 444-444-4444, email_address: pli@hotmail.com, physical_address: 555 Rose Street, New York City, New York 88888)
