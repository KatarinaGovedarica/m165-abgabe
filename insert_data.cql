USE bibliothek;

-- Bibliothek: Basel
INSERT INTO BuecherProBibliothek (
  bibliothek_id, buch_id, titel, autor, genre
) VALUES (
  00000000-0000-0000-0000-000000000001,
  11111111-1111-1111-1111-111111111111,
  '1984', 'George Orwell', 'Dystopie'
);

-- Benutzer: Anna
INSERT INTO BenutzerNachAusleihe (
  benutzer_id, ausleihdatum, buch_id, rueckgabe_datum
) VALUES (
  22222222-2222-2222-2222-222222222222,
  '2024-01-15',
  11111111-1111-1111-1111-111111111111,
  '2024-02-01'
);

-- Spiegelung: Ausleihe pro Buch
INSERT INTO AusleihenProBuch (
  buch_id, ausleihdatum, benutzer_id, rueckgabe_datum
) VALUES (
  11111111-1111-1111-1111-111111111111,
  '2024-01-15',
  22222222-2222-2222-2222-222222222222,
  '2024-02-01'
);
