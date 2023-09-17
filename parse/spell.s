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
compile: (spellflags=(paren <nil>) <nil>)
compile: (deroffargs=(paren <nil>) <nil>)
compile: (fflag='' <nil>)
compile: (for x <nil> (brace (switch (paren (words <nil> ($ x))) (brace (; (simple (arglist case -[abcvx])) (; (spellflags=(paren (words (words <nil> ($ spellflags)) ($ x))) <nil>) (; (simple (arglist case -f)) (; (fflag=($ x) <nil>) (; (simple (arglist case *)) (; (if (paren (~ ($ fflag) (words <nil> -f))) (brace (; (spellflags=(paren (words (words (words <nil> ($ spellflags)) -f) ($ x))) <nil>) (fflag='' <nil>)))) (if not (deroffargs=(paren (words (words <nil> ($ deroffargs)) ($ x))) <nil>))))))))))))
compile: <nil>
compile: (| (| (simple (arglist (arglist deroff -w) ($ deroffargs))) (simple (arglist sort -u)) (simple (arglist sprog ($ spellflags)))
compile: (simple (arglist exit ($ status)))
