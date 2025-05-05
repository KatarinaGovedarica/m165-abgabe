-- Tabelle: BenutzerNachAusleihe
CREATE TABLE IF NOT EXISTS BenutzerNachAusleihe (
  benutzer_id UUID,
  ausleihdatum DATE,
  buch_id UUID,
  rueckgabe_datum DATE,
  PRIMARY KEY (benutzer_id, ausleihdatum)
);

-- Tabelle: AusleihenProBuch
CREATE TABLE IF NOT EXISTS AusleihenProBuch (
  buch_id UUID,
  ausleihdatum DATE,
  benutzer_id UUID,
  rueckgabe_datum DATE,
  PRIMARY KEY (buch_id, ausleihdatum)
);

-- Tabelle: BuecherProBibliothek
CREATE TABLE IF NOT EXISTS BuecherProBibliothek (
  bibliothek_id UUID,
  buch_id UUID,
  titel TEXT,
  autor TEXT,
  genre TEXT,
  PRIMARY KEY (bibliothek_id, buch_id)
);
 