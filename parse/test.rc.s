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
compile: (simple a)
compile: (simple (arglist a b))
compile: (| (simple a) (simple b)
compile: (| (simple a) (simple b)
compile: (brace (; (simple a) (; (simple b) (simple c))))
compile: (|| (&& (x=y (simple a)) (simple b)) (simple c))
compile: (x=y (| (| (simple a) (simple b) (simple c))
compile: (x=y (for i <nil> (| (simple a) (simple b)))
compile: (>x (for i <nil> (| (simple a) (simple b)))
compile: (&& (|| (>x (simple a)) (simple b)) (simple c))
compile: (&& (|| (>x (simple (arglist a <nil>))) (simple b)) (simple c))
compile: (| (simple a) (for i <nil> (| (simple b) (simple c))
compile: (&& (| (fn (words <nil> x) (brace (; (simple y) (simple z)))) (simple b) (simple c))
compile: (if (paren (simple x)) (simple y))
compile: (if not (simple z))
compile: (>x (>[1=2] (>[3=] (<w (simple (arglist (arglist (arglist (arglist (arglist (arglist (` (brace <nil>)) <nil>) <nil>) y) <nil>) z) <nil>))))))
compile: (&& (~ x (words <nil> y)) (simple z))
compile: (&& (| (simple x) (simple y) (simple z))
compile: (|| (| (simple x) (simple y) (simple z))
compile: (! (| (| (simple x) (simple y) (simple z))
compile: (@ (| (| (simple x) (simple y) (simple z))
compile: (| (simple x) (! (| (simple y) (simple z))
compile: (| (| (simple x) (simple @y) (simple z)
compile: (! (| (simple x) (if (paren (simple y)) (simple z)))
compile: (@ (| (simple x) (if (paren (simple y)) (simple z)))
compile: (x=1 (| (simple y) (if (paren (simple z)) (simple w)))
compile: (simple (arglist (^ a 'b') c))
compile: (simple (^ (^ a 'b') c))
compile: (simple (arglist (^ a 'b') c))
compile: (simple ($ ($ x)))
compile: (simple ($sub x (words <nil> ($ y))))
compile: (simple ($" x))
compile: (simple ($# x))
compile: (simple ($# ($ x)))
compile: (simple (^ (^ - ($ x)) -))
compile: (simple (` (brace (; (simple a) (; (simple b) (simple c))))))
compile: (simple (<(brace (; (simple a) (simple b))) <nil>))
compile: (simple (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist x for) in) while) if) not) ~) !) @) switch) fn))
compile: (simple (arglist x (^ not ($ y))))
compile: (; (simple a) (; (simple b) (simple c)))
compile: (if (paren (simple x)) (simple y))
compile: (if (paren (simple x)) (brace (simple y)))
compile: (if not (simple z))
compile: (for x <nil> (simple y))
compile: (for x (words <nil> y) (simple z))
compile: (while (paren (simple x)) (simple y))
compile: <nil>
compile: <nil>
compile: (switch x (brace <nil>))
compile: (switch (paren (words <nil> x)) (brace <nil>))
compile: (simple z)
compile: (&& (simple x) (simple y))
compile: (|| (simple x) (simple y))
compile: (| (simple x) (simple y)
compile: (&& (switch x (brace (simple y))) (simple z))
compile: (| (switch x (brace <nil>)) (simple y)
compile: <nil>
compile: (OPTIONS=(^ (^ (^ ($ OPTIONS) ' /axescount ') (` (brace (| (simple (arglist echo ($ 1))) (simple (arglist sed s/-a//))))) ' def') <nil>)
compile: <nil>
compile: <nil>
compile: <nil>
compile: <nil>
compile: ((paren (words <nil> x))=y <nil>)
compile: (x=y <nil>)
compile: (x=y <nil>)
compile: <nil>
compile: <nil>
compile: <nil>
compile: <nil>
compile: <nil>
compile: <nil>
compile: (>z (| (simple x) (simple y))
compile: <nil>
compile: <nil>
compile: <nil>
compile: <nil>
compile: <nil>
compile: <nil>
compile: (simple (arglist exit ($ status)))
