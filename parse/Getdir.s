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
compile: <nil>
compile: <nil>
compile: (dir=(^ acme/acme/ ($ winid)) <nil>)
compile: <nil>
compile: (fn (words <nil> rd) (brace (|| (simple (arglist (arglist 9p read) (^ (^ ($ dir) /) ($ 1)))) (brace (; (>[1=2] (simple (arglist (arglist (arglist echo 9p) failed) <nil>))) (simple (arglist exit 9p)))))))
compile: (fn (words <nil> wr) (brace (|| (simple (arglist (arglist 9p write) (^ (^ ($ dir) /) ($ 1)))) (brace (; (>[1=2] (simple (arglist (arglist (arglist echo 9p) failed) <nil>))) (simple (arglist exit 9p)))))))
compile: <nil>
compile: <nil>
compile: (tag=(` (brace (simple (arglist rd tag)))) <nil>)
compile: (if (paren (! (~ ($sub tag (words <nil> 1)) (words <nil> */)))) (brace (; (>[1=2] (simple (arglist (arglist (arglist (arglist (arglist (arglist (arglist echo window) ($sub tag (words <nil> 1))) is) not) a) directory) <nil>))) (simple (arglist exit 'not a directory')))))
compile: <nil>
compile: (| (simple (arglist (arglist echo -n) ,)) (simple (arglist wr addr))
compile: <nil>
compile: (| (| (| (| (simple (arglist (arglist ls -pF) (` (brace (simple (arglist (arglist eval echo) ($sub tag (words <nil> 1)))))))) (simple (arglist sed 's/\*$//')) (simple (arglist (arglist grep -v) '^''?\.|\.o$|^''?o\.')) (simple mc) (simple (arglist wr data))
compile: (| (simple (arglist (arglist echo -n) '#0')) (simple (arglist wr addr))
compile: (| (simple (arglist (arglist echo -n) 'dot=addr')) (simple (arglist wr ctl))
compile: (simple (arglist exit ($ status)))
