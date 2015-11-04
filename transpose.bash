awk '{for(i = 1; i <=NF; i++) {a[i,NR] = $i }} \
	END {for (i = 1; i <= NF; i++){ \
			str = a[i, 1];
			for (j = 2; j <=NR; j++){str = str" "a[i, j] };\
			 print str } }' file.txt