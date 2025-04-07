// die Datenbank auswählen (oder erstellen, wenn sie noch nicht existiert)
use bibliothekDB

// collection für Benutzer
db.createCollection("Benutzer")

// collection für Bücher
db.createCollection("Buch")
