// ID-Generator einbinden
const { ObjectId } = require('mongodb');

// Benutzer Collection – insertMany()
db.Benutzer.insertMany([
  { _id: ObjectId(), name: "Anna", email: "anna@example.com" },
  { _id: ObjectId(), name: "Luca", email: "luca@example.com" },
  { _id: ObjectId(), name: "Mara", email: "mara@example.com" }
]);

// Buch Collection – insertOne()
db.Buch.insertOne({
  _id: ObjectId(),
  titel: "1984",
  autor: "George Orwell",
  genre: "Dystopie"
});
