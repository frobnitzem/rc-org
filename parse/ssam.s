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
compile: <nil>
compile: (flagfmt='n,e script,f sfile' <nil>)
compile: (args='[ file ... ]' <nil>)
compile: (if (paren (! (ifs=(paren <nil>) (simple (arglist eval (` (brace (simple (arglist getflags ($ *)))))))))) (brace (; (simple usage) (simple (arglist exit usage)))))
compile: <nil>
compile: (if (paren (&& (~ ($# flage) (words <nil> 0)) (~ ($# flagf) (words <nil> 0)))) (brace (; (if (paren (~ ($# *) (words <nil> 0))) (brace (; (simple usage) (simple (arglist exit usage))))) (; (flage=($ 1) <nil>) (simple shift)))))
compile: <nil>
compile: (if (paren (~ ($# TMPDIR) (words <nil> 0))) (TMPDIR=/tmp <nil>))
compile: (tmp=(^ (^ (^ (^ ($ TMPDIR) /ssam.tmp.) ($ USER)) .) ($ pid)) <nil>)
compile: (>($ tmp) (simple (arglist (arglist cat ($ *)) <nil>)))
compile: <nil>
compile: (| (brace (; (simple (arglist echo ',{')) (; (simple (arglist echo k)) (; (simple (arglist echo '}')) (; (simple (arglist echo 0k)) (; (if (paren (! (~ ($# flagf) (words <nil> 0)))) (simple (arglist cat ($ flagf)))) (; (if (paren (! (~ ($# flage) (words <nil> 0)))) (simple (arglist echo ($ flage)))) (if (paren (~ ($# flagn) (words <nil> 0))) (simple (arglist echo ,)))))))))) (>[2]/dev/null (simple (arglist (arglist (arglist sam -d) ($ tmp)) <nil>)))
compile: <nil>
compile: (simple (arglist (arglist rm -f) ($ tmp)))
compile: (simple (arglist exit ($ status)))
