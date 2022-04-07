#!/bin/bash
#read two interger number from files
#"shel script file read" keyword로 search
#선택된 paramater로 계산 수행

num1=$(<cat num1.txt)
num2=$(<cat num2.txt')
numarry=("$num1" "$num2) 

final_calculate(){

        if [ "$parameter" = "add" ]; then
                let result = $numarry[0] + $numarray[1]
        elif [ "$parameter" = "sub" ]; then
                let result = $numarry[0] - $numarray[1]
        elif [ "$parameter" = "div" ]; then
                let result = $numarry[0] / $numarray[1]
        elif [ "$parameter" = "mul"]; then
                let result = $numarry[0] /* $numarray[1]
        else
                echo "...none operator parameter..."
                echo "There are 4selections you can choose"
                menu=("add" "sub" "div" "mul")
                echo "1)add 2)sub 3)div 4)mul"
                read -p  "Select menu: " num
                parameter=${menu[num - 1]}
                echo $parameter
                echo "run calculater"
        fi
        echo "num1: $num1"
        echo "num2: $num2"
        echo "op: $parameter"
        echo "result: $result"

}

final_calculate
