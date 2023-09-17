compile: <nil>
compile: (if (paren (~ ($# home) (words <nil> 0))) (home=($ HOME) <nil>))
compile: (if (paren (~ ($# home) (words <nil> 0))) (home=/ <nil>))
compile: (if (paren (~ ($# ifs) (words <nil> 0))) (ifs=' 	
' <nil>))
compile: (switch (paren (words <nil> ($# prompt))) (brace (; (simple (arglist case 0)) (; (prompt=(paren (words (words <nil> '% ') '	')) <nil>) (; (simple (arglist case 1)) (prompt=(paren (words (words <nil> ($ prompt)) '	')) <nil>))))))
compile: (if (paren (simple (arglist flag p))) (path=(paren (words (words <nil> /bin) /usr/bin)) <nil>))
compile: (if not (brace (; (simple finit) (if (paren (~ ($# path) (words <nil> 0))) (path=(paren (words (words (words (words <nil> .) /bin) /usr/bin) /usr/local/bin)) <nil>)))))
compile: (fn (words <nil> sigexit) <nil>)
compile: (if (paren (! (~ ($# cflag) (words <nil> 0)))) (brace (; (if (paren (&& (simple (arglist flag l)) (simple (arglist (arglist test -r) (^ ($ home) /lib/profile))))) (simple (arglist . (^ ($ home) /lib/profile)))) (; (status='' <nil>) (; (simple (arglist eval ($ cflag))) (simple (arglist exit ($ status))))))))
compile: <nil>
compile: <nil>
compile: (if (paren (~ ($# *) (words <nil> 0))) (simple (arglist . /dev/stdin)))
compile: (if not (brace (; (status='' <nil>) (simple (arglist . ($ *))))))
compile: <nil>
compile: <nil>
compile: <nil>
compile: <nil>
compile: (if (paren (~ ($ OLIST) (words <nil> ''))) (simple (arglist exec cat)))
compile: <nil>
compile: (simple (arglist awk '
BEGIN {
	x=ENVIRON["OLIST"];
	gsub(/^-o/, "", x);
	na = split(x, a, ",");
	header = 1;
	goodpage = 0;
}

header || goodpage {
 	print
}

/^%%EndSetup[ 	]*$/ { header = 0; next }

/^%%Page:/ {
	header = 0;
	p=$2+0;
	goodpage = 0;
	for(i=1; i<=na; i++){
		if(aa=match(a[i], "-")){
			low=substr(a[i], 1, RSTART);
			high=substr(a[i], RSTART+RLENGTH);
			if(low == "")
				low = 0;
			else
				low = low+0;
			if(high == "")
				high = 100000;
			else
				high = high+0;
			if(low <= p && p <= high){
				goodpage = 1;
				break;
			}
		}else{
			if(a[i] == p){
				goodpage = 1;
				break;
			}
		}
	}
}

/^%%EndPage[ 	]*$/ {
	goodpage = 0;
}

/^%%Trailer[ 	]*$/ { 
	goodpage = 1;
}

'))
compile: (simple (arglist exit ($ status)))
