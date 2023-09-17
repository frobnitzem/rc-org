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
compile: (if (paren (! (~ ($ DEBUG) (words <nil> '')))) (simple (arglist (arglist flag x) +)))
compile: <nil>
compile: (simple (arglist (arglist echo ($ THIS_HOST)) ($ DEST_HOST)))
compile: (if (paren (~ ($ THIS_HOST) (words <nil> ($ DEST_HOST)))) (brace (if (paren (! (simple (arglist (arglist test -d) (^ (^ ($ LPSPOOL) /) ($ LPDEST)))))) (brace (; (simple (arglist mkdir (^ (^ ($ LPSPOOL) /) ($ LPDEST)))) (; (>[2]/dev/null (simple (arglist (arglist (arglist chmod 777) (^ (^ ($ LPSPOOL) /) ($ LPDEST))) <nil>))) (>[2]/dev/null (simple (arglist (arglist (arglist chmod +t) (^ (^ ($ LPSPOOL) /) ($ LPDEST))) <nil>)))))))))
compile: <nil>
compile: <nil>
compile: (i=0 <nil>)
compile: (if (paren (~ ($# *) (words <nil> 0))) (*='' <nil>))
compile: (for j (words <nil> ($ *)) (brace (; (i=(` (brace (| (simple (arglist (arglist (arglist echo ($ i)) +) 1)) (simple hoc))) <nil>) (; (if (paren (|| (~ ($ j) (words <nil> '')) (simple (arglist (arglist test -f) ($ j))))) (brace (; (if (paren (~ ($ THIS_HOST) (words <nil> ($ DEST_HOST)))) (brace (; (>(^ (^ (^ (^ (^ (^ (^ ($ LPSPOOL) /) ($ LPDEST)) /.) ($ pid)) .) ($ i)) id) (simple (arglist (arglist (arglist (arglist (arglist echo ($ LPMACHID)) ($ LPUSERID)) (^ (^ ($ pid) .) ($ i))) 0) <nil>))) (; (>(^ (^ (^ (^ (^ (^ ($ LPSPOOL) /) ($ LPDEST)) /.) ($ pid)) .) ($ i)) (simple (arglist (arglist (arglist (arglist (arglist lpinput ($ j)) lpsub) process) ($ LPPROC)) <nil>))) (; (if (paren (~ ($ status) (words <nil> ''))) (brace (; (simple (arglist (arglist mv (^ (^ (^ (^ (^ (^ ($ LPSPOOL) /) ($ LPDEST)) /.) ($ pid)) .) ($ i))) (^ (^ (^ (^ (^ (^ ($ LPSPOOL) /) ($ LPDEST)) /) ($ pid)) .) ($ i)))) (simple (arglist (arglist mv (^ (^ (^ (^ (^ (^ (^ ($ LPSPOOL) /) ($ LPDEST)) /.) ($ pid)) .) ($ i)) id)) (^ (^ (^ (^ (^ (^ (^ ($ LPSPOOL) /) ($ LPDEST)) /) ($ pid)) .) ($ i)) id)))))) (if not (brace (; (rval='preprocessing failed' <nil>) (; (simple (arglist (arglist (arglist rm -f) (^ (^ (^ (^ (^ (^ ($ LPSPOOL) /) ($ LPDEST)) /.) ($ pid)) .) ($ i))) (^ (^ (^ (^ (^ (^ (^ ($ LPSPOOL) /queue/) ($ LPDEST)) /.) ($ pid)) .) ($ i)) id))) (simple (arglist exit ($ rval)))))))))))) (if not (brace (; (| (brace (; (simple (arglist (arglist (arglist (arglist echo (^ -d ($ LPDEST))) -pnoproc) (^ -M ($ LPMACHID))) (^ -u ($ LPUSERID)))) (simple (arglist (arglist (arglist (arglist lpinput ($ j)) lpsub) process) ($ LPPROC))))) (simple (arglist lpsend.rc ($ DEST_HOST))) (rval=($ status) <nil>))))))) (if not (brace (>[1=2] (simple (arglist (arglist (arglist (arglist (arglist echo ($ j)) cannot) be) opened) <nil>)))))))))
compile: (simple (arglist exit ($ status)))
