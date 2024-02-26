`#!/bin/bash
`
 read -p "Do you want to Check the system upgrades Yes(y) / No(n) / Cancel(c):-" ANS
 if [[ "$ANS" = "y" ]]
 then
     sudo apt dist-upgrade 
     echo "Packages will be upgraded succesfully" 

     elif [[ "$ANS" = "n" ]]
     then
     echo "Packages will Not be upgraded"
                
     elif [[ "$ANS" = "c" ]]
     then
     echo "process cancelled"
 else
     echo "Unexpected error occurs!!!"
 fi     