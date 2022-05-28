#!/bin/bash

 for i in `seq 1 400`;
        do	
		if [ $i -lt 100 ];
		then
			curl  -sI https://lh0$i.irandns.com | grep server | tr -d '\n' >> out.txt && echo -n ' 'lh0$i >>  out.txt 
		else
			 curl  -sI https://lh$i.irandns.com | grep server | tr -d '\n' >> out.txt && echo -n ' 'lh$i >>  out.txt
		fi

		echo '\n' >> out.txt
        done   
