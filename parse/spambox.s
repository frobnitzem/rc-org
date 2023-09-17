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
compile: (if (paren (~ ($# *) (words <nil> 0))) (&& (simple (arglist (arglist (arglist echo usage:) spambox) mailfs/mbox)) (simple (arglist exit "usage"))))
compile: (box=($ 1) <nil>)
compile: (msgs=(paren (words <nil> (` (brace (| (>[2=1] (simple (arglist (arglist (arglist 9p ls) ($ box)) <nil>))) (simple (arglist awk '$10 ~ /[0-9][0-9]*/{print $10}')))))) <nil>)
compile: (if (paren (~ ($# msgs) (words <nil> 0))) (&& (simple (arglist (arglist (arglist (arglist echo no) messages) in) ($ box))) (simple (arglist exit "none"))))
compile: <nil>
compile: (simple (arglist (arglist echo -n) adding))
compile: (for m (words <nil> ($ msgs)) (brace (; (simple (arglist (arglist echo -n) (^ ' ' ($ m)))) (simple (arglist spam (^ (^ ($ box) /) ($ m)))))))
compile: (simple (arglist exit ($ status)))
