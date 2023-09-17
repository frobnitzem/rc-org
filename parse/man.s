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
compile: (fn (words <nil> roff) (brace (; (preproc=(paren <nil>) <nil>) (; (x=(` (brace (simple (arglist doctype ($ 2))))) <nil>) (; (if (paren (~ ($ 1) (words <nil> t))) (brace (; (if (paren (~ ($ x) (words <nil> *grap*))) (preproc=(paren (words (words <nil> ($ preproc)) grap)) <nil>)) (; (if (paren (~ ($ x) (words <nil> *pic*))) (preproc=(paren (words (words <nil> ($ preproc)) pic)) <nil>)) (Nflag=-Tutf <nil>))))) (; (if not (brace (Nflag=-N <nil>))) (; (if (paren (~ ($ x) (words <nil> *eqn*))) (preproc=(paren (words (words <nil> ($ preproc)) eqn)) <nil>)) (; (if (paren (~ ($ x) (words <nil> *tbl*))) (preproc=(paren (words (words <nil> ($ preproc)) tbl)) <nil>)) (switch (paren (words <nil> ($# preproc))) (brace (; (simple (arglist case 0)) (; (| (brace (; (simple (arglist (arglist echo -n) ($ FONTS))) (</dev/null (simple (arglist (arglist cat ($ 2)) <nil>))))) (simple (arglist (arglist troff ($ Nflag)) (^ - ($ MAN)))) (; (simple (arglist case 1)) (; (| (| (brace (; (simple (arglist (arglist echo -n) ($ FONTS))) (</dev/null (simple (arglist (arglist cat ($ 2)) <nil>))))) (simple ($ preproc)) (simple (arglist (arglist troff ($ Nflag)) (^ - ($ MAN)))) (; (simple (arglist case 2)) (; (| (| (| (brace (; (simple (arglist (arglist echo -n) ($ FONTS))) (</dev/null (simple (arglist (arglist cat ($ 2)) <nil>))))) (simple ($sub preproc (words <nil> 1))) (simple ($sub preproc (words <nil> 2))) (simple (arglist (arglist troff ($ Nflag)) (^ - ($ MAN)))) (; (simple (arglist case 3)) (; (| (| (| (| (| (brace (; (simple (arglist (arglist echo -n) ($ FONTS))) (</dev/null (simple (arglist (arglist cat ($ 2)) <nil>))))) (simple ($sub preproc (words <nil> 1))) (simple ($sub preproc (words <nil> 2))) (simple ($sub preproc (words <nil> 3))) <nil> (simple (arglist (arglist troff ($ Nflag)) (^ - ($ MAN)))) (; (simple (arglist case *)) (| (| (| (| (| (| (brace (; (simple (arglist (arglist echo -n) ($ FONTS))) (</dev/null (simple (arglist (arglist cat ($ 2)) <nil>))))) (simple ($sub preproc (words <nil> 1))) (simple ($sub preproc (words <nil> 2))) (simple ($sub preproc (words <nil> 3))) <nil> (simple ($sub preproc (words <nil> 4))) (simple (arglist (arglist troff ($ Nflag)) (^ - ($ MAN)))))))))))))))))))))))
compile: <nil>
compile: (fn (words <nil> doecho) (brace (simple (arglist echo ($ 1)))))
compile: (fn (words <nil> dotroff) (brace (simple (arglist (arglist roff t) ($ 1)))))
compile: (fn (words <nil> doproof) (brace (| (simple (arglist (arglist roff t) ($ 1))) (simple proof)))
compile: (fn (words <nil> dopage) (brace (| (| (simple (arglist (arglist roff t) ($ 1))) (simple tr2post) (simple page)))
compile: (fn (words <nil> donroff) (brace (| (simple (arglist (arglist roff n) ($ 1))) (simple (arglist sed '
		${
			/^$/p
		}
		//N
		/^\n$/D
	'))))
compile: (seq=0 <nil>)
compile: (fn (words <nil> dohtml) (brace (; (MAN=manhtml <nil>) (; (b=(` (brace (| (simple (arglist echo ($ 1))) (simple (arglist sed 's/\.[0-9].*//')))) <nil>) (; (if (paren (simple (arglist (arglist test -f) (^ ($ b) .html)))) (simple (arglist web (^ ($ b) .html)))) (if not (brace (; (| (simple (arglist (arglist roff t) ($ 1))) (>(^ (^ (^ (^ /tmp/man. ($ pid)) .) ($ seq)) .html) (simple (arglist troff2html <nil>))) (; (simple (arglist web (^ (^ (^ (^ /tmp/man. ($ pid)) .) ($ seq)) .html))) (seq=(` (brace (| (simple (arglist echo (^ 1+ ($ seq)))) (simple hoc))) <nil>))))))))))
compile: <nil>
compile: <nil>
compile: <nil>
compile: <nil>
compile: (fn (words <nil> usage) (brace (>[1=2] (simple (arglist (arglist echo 'Usage: man [-hnpPtw] [-s sec] [0-9] [0-9] ... [--] name1 name2 ...') <nil>)))))
compile: (cmd=donroff <nil>)
compile: (sec=(paren <nil>) <nil>)
compile: (S=(^ ($ PLAN9) /man) <nil>)
compile: (d=0 <nil>)
compile: (while (paren (~ ($ d) (words <nil> 0))) (brace (; (if (paren (~ ($# *) (words <nil> 0))) (brace (; (simple usage) (simple (arglist exit 1))))) (; (if (paren (simple (arglist (arglist test -d) (^ (^ ($ S) /man) ($ 1))))) (brace (; (sec=(paren (words (words <nil> ($ sec)) ($ 1))) <nil>) (simple shift)))) (if not (switch (paren (words <nil> ($ 1))) (brace (; (simple (arglist case -t)) (; (cmd=dotroff <nil>) (; (simple shift) (; (simple (arglist case -n)) (; (cmd=donroff <nil>) (; (simple shift) (; (simple (arglist case -p)) (; (cmd=doproof <nil>) (; (simple shift) (; (simple (arglist case -P)) (; (cmd=dopage <nil>) (; (simple shift) (; (simple (arglist case -w)) (; (cmd=doecho <nil>) (; (simple shift) (; (simple (arglist case -h)) (; (cmd=dohtml <nil>) (; (simple shift) (; (simple (arglist case --)) (; (d=1 <nil>) (; (simple shift) (; (simple (arglist case -*)) (; (simple usage) (; (simple (arglist exit 1)) (; (simple (arglist case *)) (d=1 <nil>)))))))))))))))))))))))))))))))))
compile: (if (paren (~ ($# sec) (words <nil> 0))) (brace (sec=(` (brace (| (simple (arglist (arglist ls -pd) (^ ($ S) /man[0-9]*))) (simple (arglist sed 's/man//')))) <nil>)))
compile: <nil>
compile: <nil>
compile: <nil>
compile: <nil>
compile: (allfiles=(paren <nil>) <nil>)
compile: (missing=no <nil>)
compile: (for word <nil> (brace (; (files=(paren <nil>) <nil>) (; (regexp=(^ (^ '^' ($ word)) ' ') <nil>) (; (for i (words <nil> (^ (^ ($ S) /man) ($ sec))) (brace (if (paren (simple (arglist (arglist test -f) (^ ($ i) /INDEX)))) (brace (; (try=(` (brace (| (simple (arglist (arglist grep ($ regexp)) (^ ($ i) /INDEX))) (simple (arglist sed 's/^[^ ]* //')))) <nil>) (if (paren (! (~ ($# try) (words <nil> 0)))) (files=(paren (words (words <nil> ($ files)) (^ (^ ($ i) /) ($ try)))) <nil>))))))) (; (if (paren (~ ($# files) (words <nil> 0))) (brace (for i (words <nil> (^ (^ ($ S) /man) ($ sec))) (brace (if (paren (simple (arglist (arglist test -f) (^ (^ (^ ($ i) /) ($ word)) .[0-9]*)))) (files=(paren (words (words <nil> ($ files)) (^ (^ (^ ($ i) /) ($ word)) .[0-9]*))) <nil>)))))) (; (if (paren (~ ($# files) (words <nil> 0))) (brace (; (>[1=2] (simple (arglist (arglist (arglist echo 'man: no manual page') ($ word)) <nil>))) (missing=yes <nil>)))) (allfiles=(paren (words (words <nil> ($ allfiles)) ($ files))) <nil>))))))))
compile: (if (paren (~ ($# allfiles) (words <nil> 0))) (simple (arglist exit 'no man')))
compile: <nil>
compile: (allfiles=(` (brace (| (| (| (simple (arglist ls ($ allfiles))) (simple (arglist sed 's/[.\-]/ &/g;s/\./ &/g')) (simple (arglist sort -u)) (simple (arglist (arglist tr -d) ' ')))) <nil>)
compile: <nil>
compile: (files=(paren <nil>) <nil>)
compile: (for i (words <nil> ($ allfiles)) (brace (; (if (paren (simple (arglist (arglist test -f) ($ i)))) (files=(paren (words (words <nil> ($ files)) ($ i))) <nil>)) (if not (>[1=2] (simple (arglist (arglist (arglist echo need) ($ i)) <nil>)))))))
compile: <nil>
compile: <nil>
compile: <nil>
compile: <nil>
compile: (for i (words <nil> ($ files)) (simple (arglist ($ cmd) ($ i))))
compile: <nil>
compile: (simple (arglist exit ($ status)))
