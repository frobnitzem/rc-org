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
compile: (if (paren (~ ($# *) (words <nil> 0))) (pid=core <nil>))
compile: (if not (pid=($ 1) <nil>))
compile: (simple shift)
compile: (if (paren (! (~ ($ pid) (words (words (words (words (words (words (words <nil> [0-9]) [0-9]*[0-9]) */core) *.core) core.*) */core.*) core)))) (brace (; (name=($ pid) <nil>) (; (pid=(` (brace (| (simple psu) (simple (arglist awk (^ (^ '$NF=="' ($ name)) '" {print $2}'))))) <nil>) (if (paren (~ ($# pid) (words <nil> 0))) (brace (; (simple (arglist echo (^ 'stack: no process ' ($ name)))) (simple (arglist exit none)))))))))
compile: (for p (words <nil> ($ pid)) (| (simple (arglist echo '$c')) (simple (arglist (arglist (arglist (arglist 9 db) -q) ($ p)) ($ *))))
compile: (simple (arglist exit ($ status)))
