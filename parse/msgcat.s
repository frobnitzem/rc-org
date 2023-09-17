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
compile: (fn (words <nil> read9p) (brace (; (srv=($ 1) <nil>) (; (simple shift) (| (>[2=1] (simple (arglist (arglist (arglist 9p read) ($ srv)) <nil>))) (simple (arglist (arglist grep -v) '^9p\:'))))))
compile: <nil>
compile: (fn (words <nil> dir9p) (brace (; (srv=($ 1) <nil>) (; (simple shift) (| (>[2=1] (simple (arglist (arglist (arglist 9p ls) ($ srv)) <nil>))) (simple (arglist (arglist grep -v) '^9p\:'))))))
compile: <nil>
compile: <nil>
compile: (fn (words <nil> catmesg) (brace (; (TMP=(^ (^ (^ /tmp/ ($ USER)) .) (` (brace (simple (arglist date -n))))) <nil>) (; (simple (arglist sleep 1)) (; (msg=($ 1) <nil>) (; (>(^ ($ TMP) .body) (simple (arglist (arglist read9p (^ ($ msg) /body)) <nil>))) (; (t=(` (brace (simple (arglist read9p (^ ($ msg) /type))))) <nil>) (; (switch (paren (words <nil> ($ t))) (brace (; (simple (arglist case text/html)) (; (|[2] (| (simple (arglist echo '
					,x/<!--(-?[^\-]|--[^>]|\n)*-->/ c//
					,x/<[^>]+>/d
					,p
					u
					,y/<[^>]+>/d
					,p
				')) (simple (arglist (arglist sam -d) (^ ($ TMP) .body))) (simple (arglist sed '1d;/^\?/d')) (; (simple (arglist case text/*)) (; (simple (arglist cat (^ ($ TMP) .body))) (; (simple (arglist case message/*)) (; (simple (arglist cat (^ ($ TMP) .body))) (; (simple (arglist case multipart/related)) (; (if (paren (~ (` (brace (simple (arglist read9p (^ ($ msg) /1/type))))) (words <nil> text/plain))) (simple (arglist catmesg (^ ($ msg) /1)))) (; (if not (if (paren (~ (` (brace (simple (arglist read9p (^ ($ msg) /2/type))))) (words <nil> text/plain))) (simple (arglist catmesg (^ ($ msg) /2))))) (; (if not (brace (for i (words <nil> (` (brace (| (simple (arglist dir9p ($ msg))) (simple (arglist awk '$10 ~ /[0-9][0-9]*/ {print $10}'))))) (simple (arglist catmesg (^ (^ ($ msg) /) ($ i))))))) (; (simple (arglist case *)) (simple (arglist echo ($ t)))))))))))))))) (simple (arglist (arglist rm -f) (^ ($ TMP) .body)))))))))))
compile: <nil>
compile: (if (paren (~ ($# *) (words <nil> 0))) (&& (simple (arglist (arglist (arglist echo usage:) msgcat) mail/mbox/msgn)) (simple (arglist exit 1))))
compile: <nil>
compile: (mesg=($ 1) <nil>)
compile: (if (paren (~ (` (brace (simple (arglist read9p (^ ($ mesg) /lines))))) (words <nil> ''))) (&& (simple (arglist (arglist (arglist (arglist echo no) such) message) ($ mesg))) (simple (arglist exit 2))))
compile: <nil>
compile: <nil>
compile: (; (simple (arglist read9p (^ ($ mesg) /unixheader))) (simple (arglist read9p (^ ($ mesg) /header))))
compile: (simple echo)
compile: (simple (arglist catmesg ($ mesg)))
compile: (simple echo)
compile: (simple (arglist exit ($ status)))
