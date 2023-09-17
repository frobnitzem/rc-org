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
compile: (if (paren (~ ($ winid) (words <nil> [0-9]*))) (brace (; (simple (arglist (arglist 9p read) (^ (^ acme/ ($ winid)) /body))) (simple (arglist exit 0)))))
compile: (if (paren (~ ($ text9term) (words <nil> (^ 'unix!' *)))) (brace (; (</dev/null (simple (arglist (arglist (arglist dial -e) ($ text9term)) <nil>))) (simple (arglist exit 0)))))
compile: (if (paren (~ ($ TMUX) (words <nil> ?*))) (brace (; (simple (arglist (arglist tmux capture-pane) -p)) (simple (arglist exit 0)))))
compile: <nil>
compile: (>[2=1] (simple (arglist (arglist echo 'no running window found') <nil>)))
compile: (simple (arglist exit 1))
compile: (simple (arglist exit ($ status)))
