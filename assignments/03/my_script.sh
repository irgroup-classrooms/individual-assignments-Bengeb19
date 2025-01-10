echo "Aufgabe 1: Erste drei Zeilen der Datei 2014-01_JA.tsv"
head -n 3 2014-01_JA.tsv

echo "Aufgabe 2: Zeilenanzahl der *.tsv-Dateien"
wc -l *.tsv

echo "Aufgabe 3: Datei mit der höchsten Zeilenanzahl"
wc -l *.tsv | grep -v total | sort -n | tail -n 1
