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
compile: (fn (words <nil> event) (brace (switch (paren (words <nil> (^ ($ 1) ($ 2)))) (brace (; (simple (arglist case E*)) (; (simple (arglist case F*)) (; (simple (arglist case K*)) (; (simple (arglist case Mi)) (; (simple (arglist case MI)) (; (simple (arglist case Md)) (; (simple (arglist case MD)) (; (simple (arglist (arglist case Mx) MX)) (; (simple (arglist winwriteevent ($ *))) (; (simple (arglist (arglist case Ml) ML)) (& (brace (; (if (paren (~ ($ dict) (words <nil> NONE))) (simple (arglist (arglist dictwin (^ (^ /adict/ ($ 9)) /)) ($ 9)))) (if not (simple (arglist (arglist (arglist dictwin (^ (^ (^ /adict/ ($ dict)) /) ($ 9))) ($ dict)) ($ 9)))))))))))))))))))))
compile: <nil>
compile: (fn (words <nil> dictwin) (brace (; (simple newwindow) (; (simple (arglist winname ($ 1))) (; (switch (paren (words <nil> ($# *))) (brace (; (simple (arglist case 1)) (; (| (| (>[2=1] (simple (arglist (arglist (arglist dict -d) '?') <nil>))) (simple (arglist sed 1d)) (simple (arglist winwrite body)) (; (simple (arglist case 2)) (; (dict=($ 2) <nil>) (; (simple (arglist case 3)) (; (dict=($ 2) <nil>) (| (>[2=1] (simple (arglist (arglist (arglist (arglist dict -d) ($ dict)) ($ 3)) <nil>))) (simple (arglist winwrite body)))))))))) (; (simple (arglist winctl clean)) (simple wineventloop)))))))
compile: <nil>
compile: (dict=NONE <nil>)
compile: (if (paren (~ ($ 1) (words <nil> -d))) (brace (; (simple shift) (; (dict=($ 1) <nil>) (simple shift)))))
compile: (if (paren (~ ($ 1) (words <nil> -d*))) (brace (; (dict=(` (brace (| (simple (arglist echo ($ 1))) (simple (arglist sed 's/-d//')))) <nil>) (simple shift))))
compile: (if (paren (~ ($ 1) (words <nil> -*))) (brace (; (>[1=2] (simple (arglist (arglist echo 'usage: adict [-d dict] [word...]') <nil>))) (simple (arglist exit usage)))))
compile: <nil>
compile: (switch (paren (words <nil> ($# *))) (brace (; (simple (arglist case 0)) (; (if (paren (~ ($ dict) (words <nil> NONE))) (simple (arglist dictwin /adict/))) (; (if not (simple (arglist (arglist dictwin (^ (^ /adict/ ($ dict)) /)) ($ dict)))) (; (simple (arglist case *)) (; (if (paren (~ ($ dict) (words <nil> NONE))) (brace (; (dict=(` (brace (| (| (simple (arglist dict (^ -d '?'))) (simple (arglist (arglist (arglist 9 sed) -n) 's/^   ([^\[ 	]+).*/\1/p')) (simple (arglist sed 1q)))) <nil>) (if (paren (~ ($# dict) (words <nil> 0))) (brace (; (>[1=2] (simple (arglist (arglist echo 'no dictionaries present on this system') <nil>))) (simple (arglist exit nodict)))))))) (for i <nil> (simple (arglist (arglist (arglist dictwin (^ (^ (^ /adict/ ($ dict)) /) ($ i))) ($ dict)) ($ i)))))))))))
compile: <nil>
compile: (simple (arglist exit ($ status)))
