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
compile: (if (paren (! (~ ($ DEBUG) (words <nil> '')))) (simple (arglist (arglist flag x) +)))
compile: <nil>
compile: (if (paren (~ ($ THIS_HOST) (words <nil> ($ DEST_HOST)))) (brace (; (if (paren (simple (arglist (arglist test -f) (^ (^ (^ ($ LPLIB) /log/) ($ LPDEST)) .st)))) (brace (; (simple (arglist echo status:)) (simple (arglist (arglist tail -3) (^ (^ (^ ($ LPLIB) /log/) ($ LPDEST)) .st)))))) (; (simple (arglist cd ($ LPSPOOL))) (if (paren (simple (arglist (arglist test -d) ($ LPDEST)))) (brace (; (once='' <nil>) (for i (words <nil> (` (brace (simple (arglist (arglist (arglist lpsub sched) ($ SCHED)) ($ LPDEST)))))) (brace (; (if (paren (~ ($ once) (words <nil> ''))) (brace (; (simple echo) (; (simple (arglist (arglist (arglist echo queue) on) (^ ($ THIS_HOST) :))) (; (simple (arglist echo 'job		user	try	size')) (once=1 <nil>)))))) (; (STATLINE=(` (brace (simple (arglist cat (^ (^ (^ ($ LPDEST) /) ($ i)) id))))) <nil>) (; (LSLINE=(` (brace (simple (arglist (arglist ls -l) (^ (^ ($ LPDEST) /) ($ i)))))) <nil>) (simple (arglist (arglist (arglist (arglist echo (^ ($sub STATLINE (words <nil> 1)) ($sub STATLINE (words <nil> 3)))) (^ '	' ($sub STATLINE (words <nil> 2)))) (^ '	' ($sub STATLINE (words <nil> 4)))) (^ '	' ($sub LSLINE (words <nil> 6)))))))))))))))))
compile: (if not (brace (| (brace (; (simple (arglist (arglist echo (^ -d ($ LPDEST))) -q)) (simple (arglist sleep 5)))) (simple (arglist lpsend ($ DEST_HOST)))))
compile: (simple (arglist exit ($ status)))
