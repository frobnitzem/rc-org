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
compile: (sym='threadmain?z
	p9main?z
	main?z' <nil>)
compile: <nil>
compile: (fn (words <nil> dbsrc) (brace (| (| (simple (arglist echo ($ sym))) (>[2]/dev/null (simple (arglist (arglist db ($ 1)) <nil>))) (simple (arglist (arglist 9 sed) '/symbol not found/d;s/.*\(\) //'))))
compile: <nil>
compile: (fn (words <nil> go) (brace (; (type=(` (brace (simple (arglist (arglist 9 file) ($ 1))))) <nil>) (switch (paren (words <nil> ($ type))) (brace (; (simple (arglist case *script*)) (; (simple (arglist (arglist plumbit ($ 1)) '(script)')) (; (simple (arglist (arglist (arglist case *executable*) (^ (^ * 'plan 9 boot image') *)) (^ (^ * 'shared object') *))) (; (simple (arglist (arglist plumbit (` (brace (simple (arglist dbsrc ($ 1)))))) '(executable)')) (; (simple (arglist case *)) (>[1=2] (simple (arglist (arglist (arglist (arglist (arglist (arglist echo (^ 'src: can''t find source for ' ($ 1))) -) unrecognized) type) ($ type)) <nil>)))))))))))))
compile: <nil>
compile: (fn (words <nil> plumbit) (brace (simple (arglist B ($ 1)))))
compile: <nil>
compile: (fn (words <nil> usage) (brace (; (>[1=2] (simple (arglist (arglist (arglist echo usage:) 'src [-n] [-s symbol] executable ...') <nil>))) (simple (arglist exit usage)))))
compile: <nil>
compile: (while (paren (~ ($ 1) (words <nil> -*))) (switch (paren (words <nil> ($ 1))) (brace (; (simple (arglist case -n)) (; (simple shift) (; (fn (words <nil> plumbit) (brace (simple (arglist echo ($ 1))))) (; (simple (arglist case -s)) (; (simple shift) (; (sym=(^ ($ 1) '?z
			threadmain?z
			p9main?z
			main?z') <nil>) (; (simple shift) (; (simple (arglist case -*)) (simple usage))))))))))))
compile: <nil>
compile: (if (paren (~ ($# *) (words <nil> 0))) (simple usage))
compile: (ifs='
' <nil>)
compile: (for i <nil> (brace (; (wi=(` (brace (>[2]/dev/null (simple (arglist (arglist whatis ($ i)) <nil>))))) <nil>) (; (if (paren (simple (arglist (arglist test -f) ($ i)))) (simple (arglist go ($ i)))) (; (if not (if (paren (&& (~ ($# wi) (words <nil> 1)) (simple (arglist (arglist test -f) ($ wi))))) (simple (arglist go ($ wi))))) (if not (simple (arglist echo (^ 'src: can''t find ' ($ i))))))))))
compile: (simple (arglist exit ($ status)))
