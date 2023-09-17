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
compile: (simple (arglist rfork en))
compile: <nil>
compile: (if (paren (~ ($# *) (words <nil> 0))) (&& (simple (arglist (arglist (arglist echo usage:) isspam) mesg)) (simple (arglist exit 'usage'))))
compile: <nil>
compile: (TMP=(^ (^ (^ /tmp/isspam. ($ USER)) .) ($ pid)) <nil>)
compile: (>(^ ($ TMP) .tok) (brace (; (simple (arglist echo '# hash table')) (| (| (| (| (simple (arglist msgcat ($ 1))) (simple (arglist sed '/^$/,$ s/^From / From /')) (simple upas/msgtok) (simple (arglist (arglist grep -v) '^....................(.*)	')) (simple (arglist sed 's/$/	1/')))))
compile: <nil>
compile: (x=(` (brace (simple (arglist (arglist (arglist (arglist (arglist upas/bayes -k) (^ ($ HOME) /mail/_prof.mbox)) (^ ($ HOME) /mail/_prof.spam)) ~) (^ ($ TMP) .tok))))) <nil>)
compile: (where=($sub x (words <nil> 1)) <nil>)
compile: (prob=($sub x (words <nil> 2)) <nil>)
compile: (simple (arglist (arglist echo ($ where)) ($ prob)))
compile: (*=(paren (words <nil> ($ x))) <nil>)
compile: (simple (arglist shift 2))
compile: (while (paren (! (~ ($# *) (words <nil> 0)))) (brace (; (simple (arglist (arglist (arglist echo ' ') ($ 1)) ($ 2))) (simple (arglist shift 2)))))
compile: <nil>
compile: (simple (arglist (arglist rm -f) (^ ($ TMP) .tok)))
compile: (if (paren (~ ($ where) (words <nil> *spam*))) (brace (; (simple (arglist echo spam)) (simple (arglist exit '')))))
compile: (if not (brace (; (simple (arglist echo ok)) (simple (arglist exit 'is ok')))))
compile: (simple (arglist exit ($ status)))
