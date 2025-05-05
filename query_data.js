// 1. Alle Bücher anzeigen
db.BuecherProBibliothek.find({})

// 2. Alle Benutzer anzeigen
db.BenutzerNachAusleihe.find({})

// 3. Alle Ausleihen anzeigen
db.AusleihenProBuch.find({})

// 4. Filterung auf DateTime-Feld: Rückgabe nach dem 01.02.2024
db.AusleihenProBuch.find({
  rueckgabe_datum: { $gt: new Date("2024-02-01") }
})

// 5. ODER-Verknüpfung: Genre oder Autor
db.BuecherProBibliothek.find({
  $or: [
    { genre: "Dystopie" },
    { autor: "George Orwell" }
  ]
})

// 6. UND-Verknüpfung: Benutzer-ID + Ausleihdatum
db.BenutzerNachAusleihe.find({
  benutzer_id: "U-001",
  ausleihdatum: new Date("2024-01-15")
})

// 7. Regex: Titel enthält "19"
db.BuecherProBibliothek.find({
  titel: { $regex: "19" }
})

// 8. Projektion mit _id
db.BuecherProBibliothek.find({}, {
  _id: 1,
  titel: 1
})

// 9. Projektion ohne _id
db.BuecherProBibliothek.find({}, {
  _id: 0,
  titel: 1
})
