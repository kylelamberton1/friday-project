#!/bin/bash

echo "enter a gggrade"
read grade

case $grade in
"A") echo "Well done";;
"B") echo "Great work";;
"C") echo "Not bad";;
*) echo "not recognised";;
esac


