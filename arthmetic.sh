#!/bin/bash
A=$1 #provide the key value while running the script "= means assignment"
B=$2
echo "The value of A is $A"
echo "The value of B is $B"
echo "$# total inputs"
if [ $# -gt 0 ]; then
    echo " You have given more inputs greater than 0"
    ADDING=$(expr $A + $B)
    echo "Adding $A & $B gives $ADDING"
    SUB=$(expr $A - $B)
    echo "Minus $A & $B gives $SUB"
    MUL=$(expr $A \* $B)
    echo "Multiply $A & $B gives $MUL"
    DIV=$(expr $A / $B)
    echo "Divison $A & $B gives $DIV"
    MOD=$(expr $A % $B)
    echo "Mod $A & $B gives $MOD"
    if [ $A == $B ]; then
        echo "Both A and B are the same"
    else
        echo "Are different"
    fi
else
    echo "no inputs"
fi
