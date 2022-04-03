#!/bin/bash
#read two interger number from files
#"shel script file read" keyword로 search
#선택된 paramater로 계산 수행

num1='cat num1.txt'
num2='cat num2.txt'

final_calculate(){

        if ["$parameter" = add];then
                result = $num1 + $num2
        elif ["$parameter" = sub];then
                result = $num1 - $num2
        elif ["$parameter" = div]; then
                result = $num1/$num2
        elif ["$parameter" = mul]; then
                result = $num1*$num2
        else
                echo "...none operator parameter..."
                echo "There are 4selections you can choose"
                menu=("add" "sub" "div" "mul")
                echo "1)add 2)sub 3)div 4)mul
                read -p  "Select menu: " num
                parameter=$num
                echo $parameter
                echo "run calculater"
        fi
        echo "num1: 35"
        echo "num2: 27"
        echo "op: $parameter"
        echo "result: $result"

}
commands
final_calculate

