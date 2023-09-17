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
compile: <nil>
compile: <nil>
compile: (index=(^ ($ PLAN9) /man/lookman.index) <nil>)
compile: (t1=(^ /tmp/look1. ($ pid)) <nil>)
compile: (t2=(^ /tmp/look2. ($ pid)) <nil>)
compile: (fn (words (words (words (words <nil> sigexit) sigint) sighup) sigterm) (brace (; (simple (arglist (arglist (arglist rm -f) ($ t1)) ($ t2))) (simple (arglist exit 1)))))
compile: (*=(` (brace (| (| (simple (arglist echo ($ *))) (simple (arglist (arglist tr A-Z) a-z)) (simple (arglist (arglist tr -dc) 'a-z0-9_ \012')))) <nil>)
compile: (if (paren (~ ($# *) (words <nil> 0))) (brace (; (>[1=2] (simple (arglist (arglist (arglist (arglist (arglist echo usage:) lookman) key) ...) <nil>))) (simple (arglist exit 1)))))
compile: (| (| (simple (arglist (arglist look ($ 1)) ($ index))) (simple (arglist sed 's/.*	//')) (>($ t1) (simple (arglist (arglist sort -u) <nil>)))
compile: (simple shift)
compile: (for i (words <nil> ($ *)) (brace (; (| (| (| (simple (arglist (arglist look ($ i)) ($ index))) (simple (arglist sed 's/.*	//')) (simple (arglist sort -u)) (>($ t2) (simple (arglist (arglist awk (^ (^ 'BEGIN {
			while (getline < "' ($ t1)) '" > 0) table[$0] = 1;
			}
			{ if (table[$0]) print }
			')) <nil>))) (simple (arglist (arglist mv ($ t2)) ($ t1))))))
compile: (| (simple (arglist sort ($ t1))) (simple (arglist sed 's;/.*/man/man[0-9]*/;;
	s;(.*)\.(.*);man \2 \1 # \1(\2);'))
compile: (simple (arglist (arglist (arglist rm -f) ($ t1)) ($ t2)))
compile: (simple (arglist exit 0))
compile: (simple (arglist exit ($ status)))
