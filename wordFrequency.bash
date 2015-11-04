awk '{ for(i = 1; i <= NF; i++) {a[$i]++;}  } \
	END{for (w in a) {print w, a[w]} }' words.txt \
	| sort -k 2 -n --reverse