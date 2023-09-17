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
compile: (if (paren (! (~ ($# *) (words <nil> 1)))) (brace (; (simple (arglist echo 'usage: 9fs sysname')) (simple (arglist exit usage)))))
compile: <nil>
compile: (fn (words <nil> srv1) (brace (; (flag=(paren <nil>) <nil>) (; (if (paren (~ ($ 1) (words <nil> -*))) (brace (; (flag=($ 1) <nil>) (simple shift)))) (if (paren (! (>/dev/null (>[2=1] (simple (arglist (arglist (arglist (arglist 9p stat) ($ 1)) <nil>) <nil>)))))) (brace (; (simple (arglist (arglist rm -f) (^ (^ ($ ns) /) ($ 1)))) (simple (arglist (arglist (arglist srv ($ flag)) ($ 2)) ($ 1))))))))))
compile: <nil>
compile: (ns=(` (brace (simple namespace))) <nil>)
compile: (switch (paren (words <nil> ($ 1))) (brace (; (simple (arglist case sources)) (; (simple (arglist (arglist (arglist srv1 -n) sources) 9p.io)) (; (simple (arglist case *)) (simple (arglist (arglist srv1 ($ 1)) ($ 1))))))))
compile: <nil>
compile: (simple (arglist exit ($ status)))
