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
compile: (simple (arglist cd ($ LPSPOOL)))
compile: (if (paren (~ ($# *) (words <nil> 0))) (KILLARGS=(` (brace (simple (arglist sed 1q)))) <nil>))
compile: (if not (KILLARGS=($ *) <nil>))
compile: <nil>
compile: (if (paren (simple (arglist (arglist test -d) ($ LPDEST)))) (brace (for i (words <nil> ($ KILLARGS)) (brace (for j (words <nil> (` (brace (simple (arglist (arglist (arglist lpsub sched) ($ SCHED)) ($ LPDEST)))))) (brace (if (paren (simple (arglist (arglist test -r) (^ (^ (^ ($ LPDEST) /) ($ j)) id)))) (brace (; (STATLINE=(` (brace (simple (arglist cat (^ (^ (^ ($ LPDEST) /) ($ j)) id))))) <nil>) (if (paren (~ (^ ($sub STATLINE (words <nil> 1)) ($sub STATLINE (words <nil> 3))) (words <nil> ($ i)))) (if (paren (>/dev/null (>[1=2] (simple (arglist (arglist (arglist (arglist rm (^ (^ ($ LPDEST) /) ($ j))) (^ (^ (^ ($ LPDEST) /) ($ j)) id)) <nil>) <nil>))))) (simple (arglist (arglist (arglist (arglist (arglist (arglist (arglist echo ($ i)) removed) from) ($ LPDEST)) queue) on) ($ THIS_HOST))))))))))))))
compile: (; (if (paren (! (~ ($ THIS_HOST) (words <nil> ($ DEST_HOST))))) (brace (@ (| (brace (; (simple (arglist (arglist echo (^ -d ($ LPDEST))) -k)) (; (simple (arglist echo ($ KILLARGS))) (simple (arglist sleep 7))))) (simple (arglist lpsend.rc ($ DEST_HOST)))))) (if not (brace (if (paren (! (~ ($ KILLCMD) (words <nil> '')))) (brace (for i (words <nil> ($ KILLARGS)) (brace (simple (arglist ($ KILLCMD) ($ i))))))))))
compile: (simple (arglist exit ''))
compile: (simple (arglist exit ($ status)))
