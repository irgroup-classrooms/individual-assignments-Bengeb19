# Regular Expressions

In the following, you will parse information from text-based files with the command line and Unix tools and Python in the next step. Please note that even though the files are provided as structured csv files you are not supposed to simply read out the columns, but you should use regular expressions instead.

## Parsing contact information from the command line

In this directory, you will find a txt-file called `csv/contacts.csv`. Use regular expressions to extract the following information from it.

Remember that you can use different tools like `grep`, `awk`, or `sed` to use regular expressions from the command line. Pipes might also be helpful. 

You can add your command line in- and outputs directly to this README file. Alternatively, you can write a bash script with all commands and commit it to this directory.

1. Extract all email addresses from the text.
``` 
cat contacts.csv | grep -Eo "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}"
``` 
2. Extract all phone numbers from the text.
``` 
cat contacts.csv | grep -Eo "\(\d{3}\)\s\d{3}-\d{4}"
``` 
3. Extract all names that start with the letter ‘J’.
``` 
cat contacts.csv | grep -Eo "^J[a-z]+\s[A-Z][a-z]+"
``` 
4. Extract all street names that contain the word 'St'.
``` 
cat contacts.csv | grep -Eo "\d{3} [A-Za-z]+ St"
``` 
5. Extract all addresses in ‘USA’.
``` 
grep "USA" contacts.csv | grep -Eo "\b\d{3} [A-Za-z]+ [A-Za-z]+\b"
``` 
6. Extract the last names of all people.
``` 
awk -F',' '{print $1}' contacts.csv | cut -d' ' -f2
``` 
7. Extract all email domains (part after the @ sign).
``` 
cat contacts.csv | grep -Eo "[A-Za-z0-9]+\.[a-z]{3}"
``` 
8.	Extract all instances of the first name ‘David’ along with their full address (street and city).
``` 
cat contacts.csv | grep -Eo "^David.+[A-Z][a-z]+,"

awk -F',' '$1 ~ /^David/ {print $1, $2, $3}' contacts.csv
``` 
9.	Find all entries where the phone number ends with ‘7’.
``` 
cat contacts.csv | grep -Eo "(555).+7$"
cat contacts.csv | grep -Eo ".+7$"
``` 
10.	Extract all instances of first names that end with the letter 'e'.
``` 
cat contacts.csv | grep -Eo "^\b[A-Za-z]+e\b"
cat contacts.csv | grep -E "^\b[A-Za-z]+e\b"
``` 
## Parsing product orders with Python

In this directory, you will find another file called `csv/orders.csv` and also a short Python script that reads the file and parses all numbers with a regular expression. Please extend the script such that it also print the following extracted text pieces.

1.	Extract all order numbers from the text. 
2.	Extract all product names.
3.	Extract all prices.
4.	Extract all order dates.
5.	Find all orders for products priced over $500. (You are allowed to use Python to filter the list.)
6.	Change the date format to DD/MM/YYYY. (Note the re.sub() method)
7.	Extract product names that have more than 6 characters.
8.	Count the occurrence of each product in the text. (You may want to use the Counter class from the collections package.)
9.	Extract the orders with prices ending in .99.
10.	Find the cheapest product. (You may want to use Python's min() method.)
