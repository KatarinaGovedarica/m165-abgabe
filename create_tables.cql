CREATE KEYSPACE IF NOT EXISTS bibliothek
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

USE bibliothek;

CREATE TABLE IF NOT EXISTS BenutzerNachAusleihe (
  benutzer_id UUID,
  ausleihdatum date,
  buch_id UUID,
  rueckgabe_datum date,
  PRIMARY KEY (benutzer_id, ausleihdatum)
);

CREATE TABLE IF NOT EXISTS BuecherProBibliothek (
  bibliothek_id UUID,
  buch_id UUID,
  titel text,
  autor text,
  genre text,
  PRIMARY KEY (bibliothek_id, buch_id)
);

CREATE TABLE IF NOT EXISTS AusleihenProBuch (
  buch_id UUID,
  ausleihdatum date,
  benutzer_id UUID,
  rueckgabe_datum date,
  PRIMARY KEY (buch_id, ausleihdatum)
);
