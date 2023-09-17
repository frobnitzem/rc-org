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
compile: <nil>
compile: <nil>
compile: <nil>
compile: (simple (arglist rfork e))
compile: (fn (words <nil> usage) (brace (; (>[1=2] (simple (arglist (arglist echo 'usage: venti/conf [-w] /dev/sdC0/v.arenas') <nil>))) (simple (arglist exit usage)))))
compile: <nil>
compile: (wflag=no <nil>)
compile: (while (paren (&& (&& (! (~ ($# *) (words <nil> 0))) (~ ($ 1) (words <nil> -*))) (! (~ ($ 1) (words <nil> --))))) (brace (; (switch (paren (words <nil> ($ 1))) (brace (; (simple (arglist case -w)) (; (wflag=yes <nil>) (; (simple (arglist case *)) (simple usage)))))) (simple shift))))
compile: (if (paren (~ ($ 1) (words <nil> --))) (simple shift))
compile: <nil>
compile: (if (paren (&& (~ ($ wflag) (words <nil> no)) (! (~ ($# *) (words <nil> 1))))) (simple usage))
compile: (if (paren (&& (~ ($ wflag) (words <nil> yes)) (! (~ ($# *) (words (words <nil> 1) 2))))) (simple usage))
compile: <nil>
compile: (disk=($ 1) <nil>)
compile: (if (paren (! (simple (arglist (arglist (arglist 9 test) -f) ($ disk))))) (brace (; (>[1=2] (simple (arglist (arglist (arglist echo 'unknown disk') ($ 1)) <nil>))) (simple (arglist exit nodisk)))))
compile: <nil>
compile: (fn (words <nil> sigexit) (brace <nil>))
compile: <nil>
compile: (if (paren (~ ($ wflag) (words <nil> yes))) (brace (; (|| (>(^ /tmp/venticonf. ($ pid)) (brace (; (simple (arglist (arglist echo venti) config)) (simple (arglist cat ($ 2)))))) (simple (arglist exit oops))) (; (if (paren (! (simple (arglist (arglist (arglist 9 test) -s) (^ /tmp/venticonf. ($ pid)))))) (brace (; (>[1=2] (simple (arglist (arglist echo 'config is empty; will not install') <nil>))) (simple (arglist exit emptyconfig))))) (; (if (paren (simple (arglist (arglist (arglist (arglist 9 test) (` (brace (| (simple (arglist (arglist (arglist 9 ls) -l) (^ /tmp/venticonf. ($ pid)))) (simple (arglist awk '{print $6}'))))) -gt) 8192))) (brace (; (>[1=2] (simple (arglist (arglist echo 'config is too long; max is a little less than eight kilobytes') <nil>))) (simple (arglist exit toolong))))) (; (|| (>/tmp/_venticonf.old (simple (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist 9 dd) -quiet) 1) -bs) 1024) -count) 8) -if) ($ disk)) -iseek) 248) <nil>))) (simple (arglist exit backup))) (; (|| (</dev/zero (>>(^ /tmp/venticonf. ($ pid)) (simple (arglist (arglist (arglist (arglist (arglist (arglist (arglist 9 dd) -quiet) 1) -count) 2) <nil>) <nil>)))) (simple (arglist exit dd))) (; (|| (simple (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist 9 dd) -quiet) 1) -bs) 1024) -count) 8) -if) (^ /tmp/venticonf. ($ pid))) -of) ($ disk)) -trunc) 0) -oseek) 248)) (simple (arglist exit dd2))) (simple (arglist exit 0))))))))))
compile: <nil>
compile: (| (simple (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist 9 dd) -quiet) 1) -bs) 1024) -count) 8) -if) ($ disk)) -iseek) 248)) (>(^ /tmp/venticonf. ($ pid)) (simple (arglist zerotrunc <nil>)))
compile: <nil>
compile: (if (paren (! (simple (arglist (arglist cmp (<(brace (simple (arglist (arglist sed 1q) (^ /tmp/venticonf. ($ pid))))) <nil>)) (<(brace (simple (arglist (arglist echo venti) config))) <nil>))))) (brace (; (>[1=2] (simple (arglist (arglist echo 'config has bad header') <nil>))) (simple (arglist exit badconfig)))))
compile: <nil>
compile: (simple (arglist (arglist sed 1d) (^ /tmp/venticonf. ($ pid))))
compile: (simple (arglist exit ''))
compile: (simple (arglist exit ($ status)))
