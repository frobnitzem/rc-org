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
compile: (fn (words <nil> newwindow) (brace (; (winctl=(` (brace (simple (arglist (arglist 9p read) acme/new/ctl)))) <nil>) (winid=($sub winctl (words <nil> 1)) <nil>))))
compile: <nil>
compile: (fn (words <nil> winctl) (brace (| (simple (arglist echo ($ *))) (simple (arglist (arglist 9p write) (^ (^ acme/ ($ winid)) /ctl)))))
compile: <nil>
compile: (fn (words <nil> winread) (brace (simple (arglist (arglist 9p read) (^ (^ (^ acme/ ($ winid)) /) ($ 1))))))
compile: <nil>
compile: (fn (words <nil> winwrite) (brace (simple (arglist (arglist 9p write) (^ (^ (^ acme/ ($ winid)) /) ($ 1))))))
compile: <nil>
compile: (fn (words <nil> windump) (brace (; (if (paren (! (~ ($ 1) (words (words <nil> -) '')))) (simple (arglist (arglist winctl dumpdir) ($ 1)))) (if (paren (! (~ ($ 2) (words (words <nil> -) '')))) (simple (arglist (arglist winctl dump) ($ 2)))))))
compile: <nil>
compile: (fn (words <nil> winname) (brace (simple (arglist (arglist winctl name) ($ 1)))))
compile: <nil>
compile: (fn (words <nil> winwriteevent) (brace (| (simple (arglist (arglist echo (^ (^ ($ 1) ($ 2)) ($ 3))) ($ 4))) (simple (arglist winwrite event))))
compile: <nil>
compile: (fn (words <nil> windel) (brace (; (if (paren (~ ($ 1) (words <nil> sure))) (simple (arglist winctl delete))) (if not (simple (arglist winctl del))))))
compile: <nil>
compile: (fn (words <nil> wineventloop) (brace (simple (arglist . (<(brace (| (>[2]/dev/null (simple (arglist (arglist winread event) <nil>))) (simple acmeevent)) <nil>)))))
compile: (simple (arglist exit ($ status)))
