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
compile: (simple (arglist rfork n))
compile: <nil>
compile: <nil>
compile: <nil>
compile: <nil>
compile: <nil>
compile: <nil>
compile: <nil>
compile: <nil>
compile: <nil>
compile: <nil>
compile: <nil>
compile: (accept=10 <nil>)
compile: (discard=13 <nil>)
compile: <nil>
compile: (wrap=123 <nil>)
compile: <nil>
compile: (if (paren (! (~ ($# *) (words <nil> 1)))) (brace (; (>[1=2] (simple (arglist (arglist (arglist (arglist echo usage:) validateattachment) mboxfile) <nil>))) (simple (arglist exit usage)))))
compile: <nil>
compile: <nil>
compile: <nil>
compile: <nil>
compile: <nil>
compile: (if (paren (&& (simple (arglist (arglist (arglist grep -s) '^%TS_ZIP_ATTACH%$') ($ 1))) (~ (` (brace (<($ 1) (simple (arglist (arglist wc -l) <nil>))))) (words (words (words (words (words (words (words (words (words (words <nil> 1) 2) 3) 4) 5) 6) 7) 8) 9) 10)))) (brace (; (simple (arglist (arglist (arglist echo bogus) zip) file!)) (simple (arglist exit ($ discard))))))
compile: <nil>
compile: (<($ 1) (>(^ ($ 1) .unvf) (simple (arglist (arglist upas/unvf <nil>) <nil>))))
compile: (file=(^ ($ 1) .unvf) <nil>)
compile: (fn (words <nil> sigexit) (brace (simple (arglist rm ($ file)))))
compile: <nil>
compile: (fn (words <nil> save) (brace <nil>))
compile: <nil>
compile: (x=(` (brace (| (<($ file) (simple (arglist file <nil>))) (simple (arglist sed s/stdin://)))) <nil>)
compile: (x=($" x) <nil>)
compile: (switch (paren (words <nil> ($ x))) (brace (; (simple (arglist (arglist (arglist (arglist case *Ascii*) *text*) (^ (^ * 'c program') *)) (^ (^ * 'rc executable') *))) (; (simple (arglist save accept)) (; (simple (arglist exit ($ accept))) (; (simple (arglist case (^ (^ * 'zip archive') *))) (; (if (paren (! (>[2=1] (>/dev/null (simple (arglist (arglist (arglist (arglist unzip -tsf) ($ file)) <nil>) <nil>)))))) (brace (; (simple (arglist (arglist (arglist echo corrupt) zip) file!)) (simple (arglist exit ($ discard)))))) (; (if (paren (| (>[2=1] (simple (arglist (arglist (arglist unzip -tsf) ($ file)) <nil>))) (simple (arglist (arglist grep -si) '      |\.(scr|exe|pif|bat|com)$'))) (brace (; (simple (arglist (arglist (arglist (arglist echo executables) inside) zip) file!)) (simple (arglist exit ($ discard)))))) (; (simple (arglist (arglist (arglist (arglist (arglist case jpeg) 'PNG image') bmp) 'GIF image') (^ * 'plan 9 image'))) (; (simple (arglist save accept)) (; (simple (arglist exit ($ accept))) (; (simple (arglist (arglist case *Microsoft*) *Office*)) (; (simple (arglist save wrap)) (; (simple (arglist exit ($ wrap))) (; (simple (arglist case *MSDOS*)) (; (simple (arglist echo ($ x))) (simple (arglist exit ($ discard)))))))))))))))))))
compile: <nil>
compile: (simple (arglist save wrap))
compile: (simple (arglist exit ($ wrap)))
compile: <nil>
compile: <nil>
compile: (simple (arglist exit ($ status)))
