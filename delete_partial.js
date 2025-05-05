use Govedarica;

// Ein Dokument löschen (z. B. Anna)
db.Benutzer.deleteOne({
  name: "Anna"
});

// Mehrere Dokumente löschen, ohne alle zu entfernen
db.Buecher.deleteMany({
  $or: [
    { titel: "Frankenstein" },
    { titel: "Der Alchimist" }
  ]
});
