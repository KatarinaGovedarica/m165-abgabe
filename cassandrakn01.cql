-- Tabelle: BenutzerNachAusleihe
CREATE TABLE IF NOT EXISTS BenutzerNachAusleihe (
  benutzer_id UUID,
  ausleihdatum DATE,
  buch_id UUID,
  rückgabe_datum DATE,
  PRIMARY KEY (benutzer_id, ausleihdatum)
);

-- Tabelle: AusleihenProBuch
CREATE TABLE IF NOT EXISTS AusleihenProBuch (
  buch_id UUID,
  ausleihdatum DATE,
  benutzer_id UUID,
  rückgabe_datum DATE,
  PRIMARY KEY (buch_id, ausleihdatum)
);

-- Tabelle: BücherProBibliothek
CREATE TABLE IF NOT EXISTS BücherProBibliothek (
  bibliothek_id UUID,
  buch_id UUID,
  titel TEXT,
  autor TEXT,
  genre TEXT,
  PRIMARY KEY (bibliothek_id, buch_id)
);
