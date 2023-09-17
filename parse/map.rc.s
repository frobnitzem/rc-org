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
compile: (simple (arglist rfork en))
compile: <nil>
compile: <nil>
compile: (FEATURE=no <nil>)
compile: <nil>
compile: (if (paren (~ ($ MAPPROG) (words <nil> ''))) (MAPPROG=/bin/aux/mapd <nil>))
compile: <nil>
compile: (if (paren (~ ($ MAPDIR) (words <nil> ''))) (MAPDIR=/lib/map <nil>))
compile: <nil>
compile: (; (F=(paren <nil>) <nil>) (; (M=(paren <nil>) <nil>) (A=(paren <nil>) <nil>)))
compile: (for i <nil> (brace (switch (paren (words <nil> ($ FEATURE))) (brace (; (simple (arglist case no)) (; (switch (paren (words <nil> ($ i))) (brace (; (simple (arglist case -f)) (; (FEATURE=yes <nil>) (; (F=(paren (words <nil> ($ F))) <nil>) (; (simple (arglist case *)) (A=(paren (words (words <nil> ($ A)) ($ i))) <nil>))))))) (; (simple (arglist case yes)) (switch (paren (words <nil> ($ i))) (brace (; (simple (arglist case -f)) (; (simple (arglist case -*)) (; (A=(paren (words (words <nil> ($ A)) ($ i))) <nil>) (; (FEATURE=no <nil>) (; (simple (arglist case riv*2)) (; (F=(paren (words (words (words <nil> ($ F)) 201) 202)) <nil>) (; (simple (arglist case riv*3)) (; (F=(paren (words (words (words (words <nil> ($ F)) 201) 202) 203)) <nil>) (; (simple (arglist case riv*4)) (; (F=(paren (words (words (words (words (words <nil> ($ F)) 201) 202) 203) 204)) <nil>) (; (simple (arglist case riv*)) (; (F=(paren (words (words <nil> ($ F)) 201)) <nil>) (; (simple (arglist case iriv*2)) (; (F=(paren (words (words (words <nil> ($ F)) 206) 207)) <nil>) (; (simple (arglist case iriv*[34])) (; (F=(paren (words (words (words (words <nil> ($ F)) 206) 207) 208)) <nil>) (; (simple (arglist case iriv*)) (; (F=(paren (words (words <nil> ($ F)) 206)) <nil>) (; (simple (arglist (arglist (arglist case coast*2) shore*2) lake*2)) (; (F=(paren (words (words <nil> ($ F)) 102)) <nil>) (; (simple (arglist (arglist (arglist case coast*3) shore*3) lake*3)) (; (F=(paren (words (words (words <nil> ($ F)) 102) 103)) <nil>) (; (simple (arglist (arglist (arglist case coast*4) shore*4) lake*4)) (; (F=(paren (words (words (words (words <nil> ($ F)) 102) 103) 104)) <nil>) (; (simple (arglist (arglist (arglist case coast*) shore*) lake*)) (; (simple (arglist (arglist case ilake*[234]) ishore*[234])) (; (F=(paren (words (words (words <nil> ($ F)) 106) 107)) <nil>) (; (simple (arglist (arglist case ilake*) ishore*)) (; (F=(paren (words (words <nil> ($ F)) 106)) <nil>) (; (simple (arglist case reef*)) (; (F=(paren (words (words <nil> ($ F)) 108)) <nil>) (; (simple (arglist case canal*2)) (; (F=(paren (words (words (words <nil> ($ F)) 210) 211)) <nil>) (; (simple (arglist case canal*[34])) (; (F=(paren (words (words (words (words <nil> ($ F)) 210) 211) 212)) <nil>) (; (simple (arglist case canal*)) (; (F=(paren (words (words <nil> ($ F)) 210)) <nil>) (; (simple (arglist case glacier*)) (; (F=(paren (words (words <nil> ($ F)) 115)) <nil>) (; (simple (arglist (arglist case state*) province*)) (; (F=(paren (words (words <nil> ($ F)) 401)) <nil>) (; (simple (arglist case countr*2)) (; (F=(paren (words (words (words <nil> ($ F)) 301) 302)) <nil>) (; (simple (arglist case countr*[34])) (; (F=(paren (words (words (words (words <nil> ($ F)) 301) 302) 303)) <nil>) (; (simple (arglist case countr*)) (; (F=(paren (words (words <nil> ($ F)) 301)) <nil>) (; (simple (arglist case salt*[234])) (; (F=(paren (words (words (words <nil> ($ F)) 109) 110)) <nil>) (; (simple (arglist case salt*)) (; (F=(paren (words (words <nil> ($ F)) 109)) <nil>) (; (simple (arglist (arglist case ice*[234]) shel*[234])) (; (F=(paren (words (words (words <nil> ($ F)) 113) 114)) <nil>) (; (simple (arglist (arglist case ice*) shel*)) (; (F=(paren (words (words <nil> ($ F)) 113)) <nil>) (; (simple (arglist case *)) (; (>[1=2] (simple (arglist (arglist (arglist (arglist (arglist echo map:) unknown) feature) ($ i)) <nil>))) (simple (arglist (arglist exits "unknown) feature"))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
compile: <nil>
compile: (for j (words <nil> ($ F)) (brace (if (paren (simple (arglist (arglist test -r) (^ (^ ($ MAPDIR) /) ($ j))))) (M=(paren (words (words <nil> ($ M)) (^ (^ ($ MAPDIR) /) ($ j)))) <nil>))))
compile: <nil>
compile: (if (paren (~ ($ F) (words <nil> ?*))) (brace (; (if (paren (simple (arglist (arglist test -r) (^ ($ MAPDIR) /101)))) (M=(paren (words (words <nil> 101) ($ M))) <nil>)) (M=(paren (words (words <nil> -m) ($ M))) <nil>))))
compile: <nil>
compile: (if (paren (~ ($ MAP) (words <nil> ''))) (MAP=world <nil>))
compile: <nil>
compile: (MAP=($ MAP) (MAPDIR=($ MAPDIR) (simple (arglist (arglist ($ MAPPROG) ($ A)) ($ M)))))
compile: (simple (arglist exit ($ status)))
