USE bibliothek;

-- Ein einzelner Eintrag aus BenutzerNachAusleihe löschen (z.B. Anna, 2024-01-15)
DELETE FROM BenutzerNachAusleihe 
WHERE benutzer_id = 22222222-2222-2222-2222-222222222222 
  AND ausleihdatum = '2024-01-15';

-- Entsprechenden Eintrag aus AusleihenProBuch löschen
DELETE FROM AusleihenProBuch 
WHERE buch_id = 11111111-1111-1111-1111-111111111111 
  AND ausleihdatum = '2024-01-15';

