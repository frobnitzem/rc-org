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
compile: (fn (words <nil> local) (brace (<(^ (^ ($ LPDEST) /) ($sub FILE (words <nil> 1))) (>($ OUTDEV) (>[2]($ PRINTLOG) (simple (arglist (arglist (arglist (arglist (arglist (arglist (arglist psdownload -f) (^ (^ -H ($ PLAN9)) /postscript/font)) -mfontmap) -plw+) <nil>) <nil>) <nil>)))))))
compile: (fn (words <nil> remote) (brace (| (brace (; (simple (arglist (arglist (arglist (arglist echo (^ -d ($ LPDEST))) -pnoproc) (^ -M ($sub SCHEDLINE (words <nil> 1)))) (^ -u ($sub SCHEDLINE (words <nil> 2))))) (; (simple (arglist cat (^ (^ ($ LPDEST) /) ($ FILE)))) (simple (arglist sleep 5))))) (simple (arglist lpsend.rc ($ DEST_HOST)))))
compile: (simple (arglist (arglist (arglist generic local) remote) ''))
compile: (simple (arglist exit ($ status)))
