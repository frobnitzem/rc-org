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
compile: (PROMPT='[^ 	]*[%;$#][ 	]+' <nil>)
compile: <nil>
compile: (fn (words <nil> cmds) (brace (| (simple wintext) (simple (arglist (arglist sed -n) (^ (^ 's/^' ($ PROMPT)) '([^"])/	\1/p')))))
compile: <nil>
compile: (switch (paren (words <nil> ($# *))) (brace (; (simple (arglist case 0)) (; (| (simple cmds) (simple (arglist tail -1)) (; (simple (arglist case *)) (| (| (| (| (| (simple cmds) (simple (arglist (arglist grep -n) (^ '^	' ($" *)))) (simple (arglist tail -r)) (simple (arglist (arglist sort -u) +1)) (simple (arglist sort -n)) (simple (arglist sed 's/^[0-9]+: //')))))))
compile: (simple (arglist exit ($ status)))
