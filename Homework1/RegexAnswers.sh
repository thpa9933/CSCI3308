#!/bin/bash
#Thomas Payne CSCI3308 HW1

if [ $# -eq 0 ]
	then
	echo "Usage: RegexAnswers.sh"
	exit 1
fi

#How many lines end with a number?
egrep '[0-9]$' $1 | wc -l

#How man lines start with a vowel?
egrep '^[aeiouAEIOU]' $1 | wc -l

#How many 9 letter (alphabet only) lines?
egrep '^[a-zA-Z]{9}' $1 | wc -l

#How many phone numbers are in the dataset(format:'___-___-____')?
egrep '^[0-9]{3}-[0-9]{3}-[0-9]{4}' $1 | wc -l

#how many city of Boulder phone numbers (starting with 303)?
egrep '^303-[0-9]{3}-[0-9]{4}' $1 | wc -l

#how many lines begin with a number and end with a vowel? 
#(.* = matches any occurance > 0(*) of any character(.))
egrep '^[0-9].*[aeiouAEIOU]$' $1 | wc -l

#How many email addresses are from UC Denver? (Eg: end with UCDENVER.edu)?
egrep '.*UCDenver.edu$' $1 | wc -l

#How many email addresses are in 'first.last' name format
#And involve someone whose first name starts with a letter in the second half of the alphebet?
egrep '^[n-zN-Z][A-Za-z]*\.[A-Za-z]+@[A-Za-z0-9]+\.[A-Za-z]{2,4}$' $1 | wc -l
