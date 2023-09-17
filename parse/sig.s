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
compile: (*=(` (brace (| (| (simple (arglist echo ($ *))) (simple (arglist (arglist tr A-Z) a-z)) (simple (arglist (arglist tr -dc) 'a-z0-9_ \012')))) <nil>)
compile: (if (paren (~ ($# *) (words <nil> 0))) (brace (; (>[1=2] (simple (arglist (arglist (arglist (arglist (arglist echo Usage:) sig) function) ...) <nil>))) (simple (arglist exit 1)))))
compile: <nil>
compile: (noplan9=(paren <nil>) <nil>)
compile: (for p (words <nil> ($ path)) (brace (if (paren (! (~ ($ p) (words <nil> (^ ($ PLAN9) /bin))))) (noplan9=(paren (words (words <nil> ($ noplan9)) ($ p))) <nil>))))
compile: <nil>
compile: (for i <nil> (brace (; (files=(` (brace (simple (arglist (arglist (arglist grep -il) (^ (^ '[ 	]\*?' ($ i)) '\(')) (^ ($ PLAN9) /man/man3/*.3*))))) <nil>) (; (for j (words <nil> ($ files)) (brace (| (| (| (| (brace (; (simple (arglist (arglist (arglist echo .nr) LL) 20i)) (simple (arglist (arglist (arglist (arglist 9 sed) -n) '/^.SH SYNOPSIS/,/^.SH.*DESCR/p') ($ j))))) (simple (arglist nroff -man)) (simple (arglist sed '
				:a
				/,$/ {
					N
					s/\n//
				}
				ta
				s/[ 	]+/ /g')) (simple (arglist (arglist (arglist grep -i) -e) (^ (^ '[ 	]\*?' ($ i)) '\('))) (simple (arglist sed 's/^[ +]/	/')))) (| (| (| (| (>[2]/dev/null (brace (; (path=($ noplan9) <nil>) (; (simple (arglist (arglist man 2) ($ i))) (simple (arglist (arglist man 3) ($ i))))))) (simple nobs) (simple (arglist (arglist sed -n) '
		:d
		/SYNOPSIS/bp
		n
		bd
		:p
		/DESCRIPTION/bd
		p
		n
		bp
	')) (simple (arglist (arglist (arglist grep -i) -e) (^ (^ '[ 	]\*?' ($ i)) '\('))) (simple (arglist sed 's/^[ +]/	/'))))))
compile: <nil>
compile: (simple (arglist exit 0))
compile: (simple (arglist exit ($ status)))
