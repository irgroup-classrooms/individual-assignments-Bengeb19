# Datenbereinigung der LotR-Daten

## 1. Dokumentation der Datenfelder

Das Dataset enthält die folgenden Felder:

- **char**: Der Name des Charakters, der spricht. Einige Werte haben Tippfehler und inkonsistente Groß-/Kleinschreibung.
- **dialog**: Der Text, den der Charakter spricht. Unerwünschte Sonderzeichen und mehrfaches Leerzeichen sind vorhanden.
- **movie**: Der Name des Films, aus dem der Dialog stammt. Unterschiedliche Schreibweisen der Filmtitel sind zu beobachten.

## 2. Schritte zur Bereinigung der Daten

### a) Entfernen von Leerzeichen
Führende und nachfolgende Leerzeichen wurden aus den Spalten `char`, `dialog` und `movie` entfernt.

### b) Bereinigung der Dialoge
Unnötige Sonderzeichen (z.B. Satzzeichen, die keine Bedeutung im Dialog haben) und mehrfaches Leerzeichen wurden entfernt.

### c) Standardisierung der Groß-/Kleinschreibung
- Die Namen der Charaktere (`char`) wurden auf die Standardform mit einem großgeschriebenen ersten Buchstaben und den restlichen Kleinbuchstaben angepasst.
- Die Filmtitel (`movie`) wurden auf den Titelstil formatiert, d.h. jeder erste Buchstabe von Wörtern wurde großgeschrieben.

### d) Entfernen von leeren Dialogen
Alle Zeilen mit leeren Dialogen wurden entfernt.

## 3. Export der bereinigten Daten
Das bereinigte Dataset wurde in die Datei `lotr_scripts_cleaned.csv` exportiert.
