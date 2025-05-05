// 1. updateOne() mit _id
db.BuecherProBibliothek.updateOne(
  { titel: "1984" }, // ← alternativ kannst du auch mit _id arbeiten, falls du die ID hast
  { $set: { genre: "Science-Fiction" } }
);

// 2. updateMany() ohne _id, mit $or-Filter
db.BenutzerNachAusleihe.updateMany(
  {
    $or: [
      { benutzer_id: "U-001" },
      { buch_id: "B-001" }
    ]
  },
  { $set: { rueckgabe_datum: new Date("2024-02-10") } }
);

// 3. replaceOne() zum vollständigen Ersetzen
db.AusleihenProBuch.replaceOne(
  { buch_id: "B-001", ausleihdatum: new Date("2024-01-15") },
  {
    _id: ObjectId(), // ← wenn du den alten _id-Wert nicht kennst, musst du ihn generieren
    buch_id: "B-001",
    ausleihdatum: new Date("2024-01-15"),
    benutzer_id: "U-001",
    rueckgabe_datum: new Date("2024-03-01"),
    kommentar: "Verlängert wegen Krankheit"
  }
);
