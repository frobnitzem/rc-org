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
compile: (if (paren (! (~ ($# *) (words <nil> 2)))) (brace (; (>[1=2] (simple (arglist (arglist (arglist (arglist (arglist echo usage:) netfilestat) system) path) <nil>))) (simple (arglist exit usage)))))
compile: <nil>
compile: (f=dostat <nil>)
compile: <nil>
compile: <nil>
compile: <nil>
compile: (fn (words <nil> dostat) (brace (; (| (simple (arglist (arglist echo cd) ($ 2))) (simple (arglist runsftp ($ 1))) (; (if (paren (simple (arglist (arglist (arglist (arglist (arglist (arglist (arglist 9 test) -e) (^ ($ t) .sftp)) -a) !) -s) (^ ($ t) .sftp)))) (brace (; (simple (arglist echo directory)) (simple (arglist exit 0))))) (; (if (paren (simple (arglist (arglist (arglist (arglist 9 grep) -s) 'Can''t change directory|is not a directory') (^ ($ t) .sftp)))) (brace (; (simple (arglist echo file)) (simple (arglist exit 0))))) (; (if (paren (simple (arglist (arglist (arglist (arglist 9 grep) -s) 'Couldn''t stat remote file|such file') (^ ($ t) .sftp)))) (brace (; (simple (arglist echo nonexistent)) (simple (arglist exit 0))))) (; (>[1=2] (brace (; (simple (arglist (arglist echo unknown) error:)) (simple (arglist (arglist sed 's/^/	/') (^ ($ t) .sftp)))))) (simple (arglist exit 0)))))))))
compile: <nil>
compile: (fn (words <nil> dostat9p) (brace (; (if (paren (! (>($ t) (>[2]/dev/null (simple (arglist (arglist (arglist (arglist (arglist 9p ls) -ld) (^ (^ ($ 1) /) ($ 2))) <nil>) <nil>)))))) (brace (; (simple (arglist echo nonexistent)) (simple (arglist exit 0))))) (; (if (paren (simple (arglist (arglist (arglist (arglist 9 grep) -s) '^d') ($ t)))) (brace (; (simple (arglist echo directory)) (simple (arglist exit 0))))) (; (simple (arglist echo file)) (simple (arglist exit 0)))))))
compile: <nil>
compile: (simple (arglist (arglist ($ f) ($ 1)) ($ 2)))
compile: (simple (arglist exit ($ status)))
