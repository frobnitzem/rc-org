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
compile: (| (| (| (| (| (simple (arglist (arglist (arglist 9 troff) -ms) ($ *))) (simple tr2post) (simple (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist gs -g1000x1000) -r144) -dNOPAUSE) -dQUIET) '-dGraphicsAlphaBits=4') '-dTextAlphaBits=4') '-sOUTPUTFILE=-') '-sDEVICE=png16m') -) quit.ps)) (simple (arglist (arglist 9 png) -9t)) (simple (arglist (arglist (arglist (arglist (arglist 9 crop) -c) 255) 255) 255)) (simple (arglist 9 topng))
compile: <nil>
compile: (simple (arglist exit ($ status)))
