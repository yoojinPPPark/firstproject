#!/bin/bash

#select: add/sub/div/mul
#선택된 메뉴를 parameter로 set
#run cal.sh

echo "...create temp directory"
echo "...copy files to temp directory"
function_calculate(){
        #배열로 번호랑 이름 저장해야하나
        echo "There are 4selections you can choose"
        menu=("add" "sub" "div" "mul")
        echo "1)add 2)sub 3)div 4)mul
        read -p  "Select menu: " num
        parameter=$num


        echo $parameter
        echo "run calculater"

        #cal.sh shell script run

        testfile cal.sh
        
}
        
commands
function_calculate
