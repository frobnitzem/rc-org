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
compile: (if (paren (! (~ ($# *) (words <nil> 2)))) (brace (; (>[1=2] (simple (arglist (arglist echo 'usage: vmount server mtpt') <nil>))) (simple (arglist exit usage)))))
compile: <nil>
compile: (server=($ 1) <nil>)
compile: (mtpt=($ 2) <nil>)
compile: <nil>
compile: (switch (paren (words <nil> (` (brace (simple uname))))) (brace (; (simple (arglist case Linux)) (; (simple (arglist (arglist (arglist (arglist (arglist (arglist (arglist exec mount) -t) nfs) -o) 'ro,timeo=100,rsize=8192,retrans=5,port=2049,mountport=2049,mountvers=3,nfsvers=3,nolock,soft,intr,udp') (^ ($ server) :/dump)) ($ mtpt))) (; (simple (arglist case *)) (simple (arglist (arglist (arglist (arglist (arglist exec vmount0) -h) 00) ($ server)) ($ mtpt))))))))
compile: <nil>
compile: (simple (arglist exit ($ status)))
