#!/bin/bash

#note - I figured out the "should be" by copy and pasting the file into 
#word and removing all code blocks and block quotes to mimick the code

echo "running TEST 1 with simple md file should be 10"
echo "got: " 
php ../wordcount.php test1.md
printf '\n'

echo "running TEST 2 with code blocks, should be 5"
echo "got: " 
php ../wordcount.php test2.md
printf '\n'

echo "running TEST 3 with html tags, should be 13"
echo "got: " 
php ../wordcount.php test3.md
printf '\n'

echo "running TEST 4 with single quotes, should be 7"
echo "got: " 
php ../wordcount.php test4.md
printf '\n'

echo "running TEST 5 with numbers in string, should be 8"
echo "got: " 
php ../wordcount.php test5.md
printf '\n'

echo "running TEST 6 with sample PL paper should be 1706"
echo "got: "
php ../wordcount.php https://raw.githubusercontent.com/joshfermin/PL/master/project/pep227.md
printf '\n'

echo "runnnig TEST 7 with another sample PL paper should be 1660"
echo "got: "
php ../wordcount.php https://raw.githubusercontent.com/zhued/CSCI-3155---Principles-of-Programming-Languages/master/Project/Paper.md
printf '\n'

echo "running TEST 7 with random MD file should be 410"
echo "got: " 
php ../wordcount.php https://raw.githubusercontent.com/Zandrr/ProgrammingLanguages/master/lab3/README.md
printf '\n'
