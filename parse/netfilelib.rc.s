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
compile: (ns=(` (brace (simple namespace))) <nil>)
compile: (if (paren (</dev/null (>[2]/dev/null (simple (arglist (arglist dial (^ (^ (^ 'unix!' ($ ns)) /) ($ 1))) <nil>))))) (f=(^ ($ f) 9p) <nil>))
compile: <nil>
compile: (t=(^ (^ (^ /tmp/netfilexxx. ($ pid)) .) ($ USER)) <nil>)
compile: (fn (words <nil> sigexit) (brace (simple (arglist (arglist (arglist rm -f) ($ t)) (^ ($ t) .*)))))
compile: <nil>
compile: (fn (words <nil> runsftp) (brace (; (eflag=no <nil>) (; (if (paren (~ ($ 1) (words <nil> -e))) (brace (; (eflag=yes <nil>) (simple shift)))) (; (if (paren (! (</dev/null (>[2]/dev/null (simple (arglist (arglist dial (^ (^ (^ (^ 'unix!' ($ ns)) /) ($ 1)) .sftp)) <nil>)))))) (brace (</dev/null (>[1=2] (simple (arglist (arglist (arglist (arglist sftpcache -D) ($ 1)) <nil>) <nil>)))))) (; (>(^ ($ t) .sftp1) (>[2=1] (brace (; (if (paren (! (</dev/null (>[2]/dev/null (simple (arglist (arglist dial (^ (^ (^ (^ 'unix!' ($ ns)) /) ($ 1)) .sftp)) <nil>)))))) (brace (&& (| (simple (arglist sed 's/^/-/')) (simple (arglist (arglist (arglist sftp -b) /dev/stdin) ($ 1))) (simple (arglist echo DONE))))) (if not (brace (| (brace (; (simple cat) (simple (arglist echo DONE)))) (simple (arglist (arglist dial -e) (^ (^ (^ (^ 'unix!' ($ ns)) /) ($ 1)) .sftp))))))))) (; (>(^ ($ t) .sftp) (simple (arglist (arglist (arglist sed '/^sftp> /d
		/^Connecting to /d
		/^Fetching /d
		/^Uploading /d
		/^DONE$/d
	') (^ ($ t) .sftp1)) <nil>))) (; (if (paren (! (simple (arglist (arglist (arglist (arglist 9 grep) -s) '^DONE$') (^ ($ t) .sftp1))))) (brace (; (>[1=2] (simple (arglist (arglist (arglist (arglist (arglist echo sftp) did) not) finish:) <nil>))) (; (>[1=2] (simple (arglist (arglist (arglist sed 's/^/	/g') (^ ($ t) .sftp1)) <nil>))) (simple (arglist exit 1)))))) (; (if (paren (&& (~ ($ eflag) (words <nil> yes)) (simple (arglist (arglist test -s) (^ ($ t) .sftp))))) (brace (; (>[1=2] (simple (arglist (arglist (arglist (arglist echo sftp) error) output:) <nil>))) (; (>[1=2] (simple (arglist (arglist (arglist sed '/^DONE$/d; s/^/	/g') (^ ($ t) .sftp1)) <nil>))) (simple (arglist exit 1)))))) (status='' <nil>))))))))))
compile: <nil>
compile: (simple (arglist exit ($ status)))
