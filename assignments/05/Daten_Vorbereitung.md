# Datenbereinigung der LotR-Daten

## 1. Dokumentation der Datenfelder

Das Dataset enthält die folgenden Felder:

- **char**: Der Name des Charakters, der spricht. Inkonsistente Groß-/Kleinschreibung.
- **dialog**: Der Text, den der Charakter spricht. Unerwünschte Sonderzeichen und mehrfaches Leerzeichen sind vorhanden.
- **movie**: Der Name des Films, aus dem der Dialog stammt. 

## 2. Schritte zur Bereinigung der Daten

### a) Entfernen von führenden und nachfolgenden Leerzeichen
Führende und nachfolgende Leerzeichen wurden aus den Spalten `char`, `dialog` und `movie` entfernt, um die Daten zu bereinigen.

### b) Bereinigung der Dialoge
Unnötige Sonderzeichen (wie Klammern und deren Inhalte) und mehrfaches Leerzeichen wurden entfernt. Darüber hinaus wurden Leerzeichen direkt vor einem Komma entfernt, um die Struktur der Dialoge zu verbessern.

### c) Entfernen von Klammern aus allen Spalten
Alle Klammern (rund, eckig, etc.) und deren Inhalte wurden aus den Spalten `char`, `dialog` und `movie` entfernt, um die Daten zu vereinheitlichen und nur die relevanten Informationen zu behalten.

### d) Entfernen von "voice over" und "VoiceOver" aus den Charakternamen
In den Charakternamen wurden alle Vorkommen von "voice over" und "VoiceOver" entfernt, um unnötige Zusätze zu eliminieren.

### e) Standardisierung der Groß-/Kleinschreibung
Die Namen der Charaktere (`char`) und die Filmtitel (`movie`) wurden standardisiert. Der erste Buchstabe jedes Wortes wurde großgeschrieben, während der Rest in Kleinbuchstaben belassen wurde.

### f) Entfernen von Zeilen mit leeren Dialogen
Zeilen mit leeren Dialogen wurden aus dem Dataset entfernt, da diese keine relevanten Informationen für die Analyse bieten.

## 3. Export der bereinigten Daten
Das bereinigte Dataset wurde in die Datei `lotr_scripts_clean.csv` exportiert, welche die sauberen und korrekt formatierten Daten enthält, die für die Analyse verwendet werden können.
