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

---

# Analyse der bereinigten Daten

## a) Gesamtanzahl der Dialogzeilen
wc -l lotr_scripts_clean.csv
Die Gesamtzahl der Dialogzeilen im bereinigten Dataset beträgt **[2386]**.

## b) Einzigartige Wörter im Dialog
awk -F, '{print $2}' lotr_scripts_clean.csv | tr ' ' '\n' | sort | uniq | wc -l
Es gibt **[4364]** einzigartige Wörter in der Dialog-Spalte.

## c) Verteilung der Dialoge auf die Filme

Die Verteilung der Dialoge auf die drei Filme sieht wie folgt aus:

- **The Return of the King**: [Anzahl] Dialoge
- **The Two Towers**: [Anzahl] Dialoge
- **The Fellowship of the Ring**: [Anzahl] Dialoge

## d) Top 5 Charaktere in der `char`-Spalte
awk -F, '{print $1}' lotr_scripts_clean.csv | sort | uniq -c | sort -nr | head -n 5
Die fünf Charaktere, die am häufigsten in der `char`-Spalte vorkommen, sind:

1. **[Frodo]** – [226] Dialoge
2. **[Sam]** – [217] Dialoge
3. **[Gandalf]** – [205] Dialoge
4. **[Aragorn]** – [187] Dialoge
5. **[Pippin]** – [163] Dialoge

## e) Top 5 Charaktere in den Dialogen
Die häufigsten Charaktere, die in den Dialogen selbst erwähnt werden, sind:

1. **[Charakter X]** – [Anzahl] Erwähnungen
2. **[Charakter Y]** – [Anzahl] Erwähnungen
3. **[Charakter Z]** – [Anzahl] Erwähnungen
4. **[Charakter W]** – [Anzahl] Erwähnungen
5. **[Charakter V]** – [Anzahl] Erwähnungen
