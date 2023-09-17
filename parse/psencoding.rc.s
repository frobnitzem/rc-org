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
compile: <nil>
compile: (POSTLIB=/sys/lib/postscript/prologues <nil>)
compile: (DEFAULT=Default.enc <nil>)
compile: (CURRENTDEFAULT=Standard <nil>)
compile: <nil>
compile: (if (paren (~ ($# *) (words <nil> 0))) (brace (; (simple (arglist cd ($ POSTLIB))) (; (for i (words <nil> *.enc) (brace (if (paren (simple (arglist (arglist (arglist (arglist (arglist (arglist test -f) ($ i)) -a) ($ i)) '!=') ($ DEFAULT)))) (brace (; (NAME=(` (brace (| (simple (arglist echo ($ i))) (simple (arglist sed s/\\.enc//)))) <nil>) (; (if (paren (>/dev/null (>[2]/dev/null (simple (arglist (arglist (arglist (arglist cmp ($ i)) ($ DEFAULT)) <nil>) <nil>))))) (brace (CURRENTDEFAULT=($ NAME) <nil>))) (simple (arglist echo ($ NAME))))))))) (; (simple (arglist echo Standard)) (simple (arglist echo (^ (^ Default '=') ($ CURRENTDEFAULT)))))))))
compile: (if not (brace (switch (paren (words <nil> ($ 1))) (brace (; (simple (arglist case Default)) (; (simple (arglist case Standard)) (; (simple (arglist (arglist rm -f) (^ (^ ($ POSTLIB) /) ($ DEFAULT)))) (; (simple (arglist case *)) (; (if (paren (simple (arglist (arglist test -f) (^ (^ (^ ($ POSTLIB) /) ($ 1)) .enc)))) (brace (; (simple (arglist (arglist rm -f) (^ (^ ($ POSTLIB) /) ($ DEFAULT)))) (simple (arglist (arglist cp (^ (^ (^ ($ POSTLIB) /) ($ 1)) .enc)) (^ (^ ($ POSTLIB) /) ($ DEFAULT))))))) (if not (>[1=2] (simple (arglist (arglist (arglist (arglist (arglist echo unrecognized) encoding) name) ($ 1)) <nil>)))))))))))))
compile: (simple (arglist exit ($ status)))
