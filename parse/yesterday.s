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
compile: (smon='s/Jan/01/
	s/Feb/02/
	s/Mar/03/
	s/Apr/04/
	s/May/05/
	s/Jun/06/
	s/Jul/07/
	s/Aug/08/
	s/Sep/09/
	s/Oct/10/
	s/Nov/11/
	s/Dec/12/' <nil>)
compile: <nil>
compile: <nil>
compile: (fn (words <nil> usage) (brace (; (>[1=2] (simple (arglist (arglist echo 'usage: yesterday [-cd] [-[[yy]yy]mm]dd] [-n daysago] file ...') <nil>))) (simple (arglist exit 1)))))
compile: <nil>
compile: (fn (words <nil> Xcp) (brace (; (simple (arglist (arglist (arglist echo cp) ($ 1)) ($ 2))) (simple (arglist (arglist cp ($ 1)) ($ 2))))))
compile: <nil>
compile: (fn (words <nil> Xcarefulcp) (brace (if (paren (! (simple (arglist (arglist (arglist cmp -s) ($ 1)) ($ 2))))) (simple (arglist (arglist Xcp ($ 1)) ($ 2))))))
compile: <nil>
compile: (fn (words <nil> Xdiff) (brace (; (simple (arglist (arglist (arglist (arglist echo diff) -c) ($ 1)) ($ 2))) (simple (arglist (arglist (arglist diff -c) ($ 1)) ($ 2))))))
compile: <nil>
compile: (fn (words <nil> Xecho) (brace (simple (arglist echo ($ 1)))))
compile: <nil>
compile: (year=(` (brace (| (simple date) (simple (arglist sed 's/.* //')))) <nil>)
compile: (copy=Xecho <nil>)
compile: (last=(paren <nil>) <nil>)
compile: (while (paren (&& (&& (! (~ ($# *) (words <nil> 0))) (~ ($ 1) (words <nil> -*))) (! (~ ($ 1) (words <nil> --))))) (brace (switch (paren (words <nil> ($ 1))) (brace (; (simple (arglist case -c)) (; (copy=Xcp <nil>) (; (simple shift) (; (simple (arglist case -d)) (; (copy=Xdiff <nil>) (; (simple shift) (; (simple (arglist case -C)) (; (copy=Xcarefulcp <nil>) (; (simple shift) (; (simple (arglist case -n*)) (; (if (paren (~ ($ 1) (words <nil> -n))) (brace (; (if (paren (~ ($# *) (words <nil> 1))) (simple usage)) (; (simple shift) (days=($ 1) <nil>))))) (; (if not (days=(` (brace (| (simple (arglist echo ($ 1))) (simple (arglist sed 's/^-.//')))) <nil>)) (; (last=(` (brace (| (simple (arglist date (` (brace (simple (arglist (arglist hoc -e) (^ (^ (^ (` (brace (simple (arglist date -n)))) '-') ($ days)) '*60*60*24'))))))) (simple (arglist (arglist (arglist (arglist (arglist (arglist sed -e) 's%... (...) (..) ..:..:.. ... (....)%\3/\1\2%') -e) 'y/ /0/') -e) ($ smon))))) <nil>) (; (simple shift) (; (simple (arglist case -[0-9])) (; (mon=(` (brace (| (simple date) (simple (arglist (arglist (arglist (arglist 9 sed) 's/^....(...).*/\1/') -e) ($ smon))))) <nil>) (; (last=(^ (^ (^ ($ year) /) ($ mon)) (` (brace (| (simple (arglist echo ($ 1))) (simple (arglist sed 's/^-/0/'))))) <nil>) (; (simple shift) (; (simple (arglist case -[0-9][0-9])) (; (mon=(` (brace (| (simple date) (simple (arglist (arglist (arglist (arglist 9 sed) 's/^....(...).*/\1/') -e) ($ smon))))) <nil>) (; (last=(^ (^ (^ ($ year) /) ($ mon)) (` (brace (| (simple (arglist echo ($ 1))) (simple (arglist (arglist 9 sed) 's/^-//'))))) <nil>) (; (simple shift) (; (simple (arglist case -[0-9][0-9][0-9][0-9])) (; (last=(^ (^ ($ year) /) (` (brace (| (simple (arglist echo ($ 1))) (simple (arglist (arglist 9 sed) 's/^-//'))))) <nil>) (; (simple shift) (; (simple (arglist case -[0-9][0-9][0-9][0-9][0-9][0-9])) (; (last=(^ (` (brace (| (simple (arglist echo ($ year))) (simple (arglist (arglist 9 sed) 's/..$//')))) (` (brace (| (simple (arglist echo ($ 1))) (simple (arglist (arglist 9 sed) 's/^-(..)/\1\//'))))) <nil>) (; (simple shift) (; (simple (arglist case -[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9])) (; (last=(` (brace (| (simple (arglist echo ($ 1))) (simple (arglist (arglist 9 sed) 's/^-(....)/\1\//')))) <nil>) (; (simple shift) (; (simple (arglist case *)) (simple usage)))))))))))))))))))))))))))))))))))))
compile: (if (paren (&& (! (~ ($# *) (words <nil> 0))) (~ ($ 1) (words <nil> --)))) (simple shift))
compile: <nil>
compile: (if (paren (~ ($# *) (words <nil> 0))) (simple usage))
compile: <nil>
compile: (dir=(` (brace (simple pwd))) <nil>)
compile: (if (paren (! (~ ($ status) (words <nil> '')))) (brace (; (>[1=2] (simple (arglist (arglist echo 'yesterday: can''t find directory') <nil>))) (simple (arglist exit 'pwd failed')))))
compile: <nil>
compile: (h=(` (brace (simple hostname))) <nil>)
compile: (switch (paren (words <nil> ($ h))) (brace (; (simple (arglist case amsterdam)) (; (xdump=/dump/am <nil>) (; (simple (arglist case *)) (; (if (paren (! (simple (arglist (arglist test -d) (^ /dump/ ($ h)))))) (brace (; (>[1=2] (simple (arglist (arglist echo (^ 'no dumps on ' (` (brace (simple hostname))))) <nil>))) (simple (arglist exit 1))))) (xdump=(^ /dump/ ($ h)) <nil>)))))))
compile: <nil>
compile: (for i <nil> (brace (; (xpath=($ i) <nil>) (; (if (paren (! (~ ($ xpath) (words <nil> /*)))) (xpath=(` (brace (simple (arglist (arglist (arglist (arglist 9 cleanname) -d) (` (brace (simple pwd)))) ($ i))))) <nil>)) (; (dumppath=($ xpath) <nil>) (; (if (paren (~ ($# last) (words <nil> 0))) (xlast=(` (brace (| (simple (arglist (arglist (arglist 9 ls) -t) (^ (^ ($ xdump) /) ($ year)))) (simple (arglist sed 1q)))) <nil>)) (; (if not (xlast=(^ (^ ($ xdump) /) ($ last)) <nil>)) (simple (arglist (arglist ($ copy) (^ ($ xlast) ($ dumppath))) ($ xpath))))))))))
compile: (simple (arglist exit ($ status)))
