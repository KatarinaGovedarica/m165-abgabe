USE bibliothek;


UPDATE BuecherProBibliothek
SET titel = '"1984"'
WHERE bibliothek_id = 00000000-0000-0000-0000-000000000001
AND buch_id = 11111111-1111-1111-1111-111111111111;


UPDATE BenutzerNachAusleihe
SET rueckgabe_datum = '2024-02-15'
WHERE benutzer_id = 22222222-2222-2222-2222-222222222222
AND ausleihdatum = '2024-01-15';

UPDATE AusleihenProBuch
SET rueckgabe_datum = '2024-02-15'
WHERE buch_id = 11111111-1111-1111-1111-111111111111
AND ausleihdatum = '2024-01-15';


UPDATE BuecherProBibliothek
SET genre = 'Science-Fiction'
WHERE bibliothek_id = 00000000-0000-0000-0000-000000000001
AND buch_id = 11111111-1111-1111-1111-111111111111;
