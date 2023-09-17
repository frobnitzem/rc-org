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
compile: (dir=($ 9fansweb) <nil>)
compile: (if (paren (~ ($# dir) (words <nil> 0))) (brace (; (dir=(^ ($ home) /pub/9fans.github.io) <nil>) (9fansweb=($ dir) <nil>))))
compile: <nil>
compile: (root=(^ ($ dir) /plan9port) <nil>)
compile: (if (paren (! (simple (arglist (arglist test -d) ($ root))))) (brace (; (>[1=2] (simple (arglist (arglist (arglist (arglist (arglist echo ($ root)) does) not) exist) <nil>))) (simple (arglist exit bad)))))
compile: <nil>
compile: (simple (arglist (arglist rm -rf) (^ ($ root) /man)))
compile: (simple (arglist (arglist (arglist cp -a) ../man) (^ ($ root) /man)))
compile: (simple (arglist (arglist mkdir -p) (^ ($ root) /unix)))
compile: (simple (arglist (arglist cp unix.html) (^ ($ root) /unix/index.html)))
compile: (simple (arglist (arglist cp main.html) (^ ($ root) /index.html)))
compile: (simple (arglist (arglist cp ss.html) (^ ($ root) /screenshots/index.html)))
compile: (@ (brace (&& (simple (arglist cd ../unix/man)) (simple (arglist mk push)))))
compile: (@ (brace (&& (simple (arglist cd ../unix)) (simple (arglist mk push)))))
compile: <nil>
compile: (simple (arglist (arglist rm -rf) (^ ($ root) /../usr/local/plan9port)))
compile: (simple (arglist (arglist mkdir -p) (^ ($ root) /../usr/local/plan9port)))
compile: (@ (| (brace (; (simple (arglist cd ..)) (simple (arglist (arglist git archive) HEAD)))) (@ (brace (&& (simple (arglist cd (^ ($ root) /../usr/local/plan9))) (simple (arglist (arglist (arglist u tar) xf) -))))))
compile: (for d (words <nil> (` (brace (simple (arglist (arglist (arglist find (^ ($ root) /../usr/local/plan9)) -type) d))))) (brace (&& (>t1 (simple (arglist (arglist (arglist (arglist (arglist 9 rc) ./mkdirlist) ($ d)) (` (brace (| (simple (arglist echo ($ d))) (simple (arglist sed 's;.*/usr;/usr;'))))) <nil>))) (simple (arglist (arglist mv t1) (^ ($ d) /index.html))))))
compile: (simple (arglist exit ($ status)))
