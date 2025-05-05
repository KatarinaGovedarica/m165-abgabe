USE bibliothek;

-- Alle Bücher einer Bibliothek
SELECT * FROM BücherProBibliothek
WHERE bibliothek_id = 00000000-0000-0000-0000-000000000001;

-- Alle Ausleihen eines Benutzers
SELECT * FROM BenutzerNachAusleihe
WHERE benutzer_id = 22222222-2222-2222-2222-222222222222;

-- Alle Ausleihen für ein Buch
SELECT * FROM AusleihenProBuch
WHERE buch_id = 11111111-1111-1111-1111-111111111111;
