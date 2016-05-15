#!/bin/bash

if [ ! -z "$1" ]
then

        case $1 in

        a)
                echo "Choice was A!"
                ;;
        b)
                echo "Choice was B!"
                ;;
        c)
                echo "Choice was C!"
                ;;
        d)
                echo "Choice was D!"
                ;;

        *)      echo "You chose neither A,B,C,or D"
                ;;

        esac

else
        echo "Please Choose a,b,c,d"
fi
