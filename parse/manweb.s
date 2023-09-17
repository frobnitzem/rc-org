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
compile: (verbose=no <nil>)
compile: (if (paren (~ ($ 1) (words <nil> -v))) (verbose=yes <nil>))
compile: <nil>
compile: (fn (words <nil> silencer) (brace (switch (paren (words <nil> ($ verbose))) (brace (; (simple (arglist case no)) (; (>/dev/null (simple (arglist cat <nil>))) (; (simple (arglist case yes)) (simple cat))))))))
compile: <nil>
compile: <nil>
compile: (simple (arglist cd (^ ($ PLAN9) /man)))
compile: <nil>
compile: <nil>
compile: (for i (words <nil> */INDEX) (&& (@ (>(^ ($ i) .html) (brace (; (n=(` (brace (| (simple (arglist echo ($ i))) (simple (arglist sed 's/man//;s!/INDEX!!')))) <nil>) (; (| (simple (arglist cat (^ ($ PLAN9) /dist/manindextop.html))) (simple (arglist sed (^ (^ 's/NNN/' ($ n)) '/g'))) (; (simple (arglist cd (` (brace (simple (arglist (arglist basename -d) ($ i))))))) (; (for j (words <nil> (` (brace (| (| (| (>[2]/dev/null (simple (arglist (arglist ls [a-z0-9:]*.[0-9]*) <nil>))) (simple (arglist sed 's/[.\-]/ &/g;s/\./ &/g')) (simple sort) (simple (arglist (arglist tr -d) ' '))))) (brace (; (n=(` (brace (| (| (simple (arglist (arglist grep '^\.TH') ($ j))) (simple (arglist sed 1q)) (simple (arglist awk '{print $3}')))) <nil>) (; (name=(` (brace (| (simple (arglist echo ($ j))) (simple (arglist sed 's/\..*//')))) <nil>) (; (if (paren (~ ($ name) (words <nil> 0intro))) (name=intro <nil>)) (; (if not (brace (; (simple (arglist echo '<tr height=1><td>')) (; (simple (arglist echo '<tr height=1><td colspan=2 bgcolor=#cccccc>')) (simple (arglist echo '<tr height=1><td>')))))) (; (if (paren (~ ($# name) (words <nil> 0))) (name=(^ (^ XXX-name- ($ j)) -XXX) <nil>)) (; (if (paren (~ ($# n) (words <nil> 0))) (n=(^ (^ XXX-n- ($ j)) -XXX) <nil>)) (; (simple (arglist (arglist echo -n) (^ (^ (^ (^ (^ (^ '<tr><td valign=top><a href="' ($ name)) '.html">') ($ name)) '(') ($ n)) ')</a><td>'))) (simple (arglist (arglist (arglist sed -n) '
		/SH *NAM/,/SH/{
			/SH/d
			s/, *$//
			ty
			:y
			s/ *\\*-.*/&/
			tx
			s/ *\\\(mi.*/&/
			tx
			s/\n\\n/\
/g
			p
		}
		/SH *DES/q
		d
		:x
		/^$/d
		s/\n\n/\
/g
		s/\\-/\&ndash;/
		p
		q') ($ j)))))))))))) (simple (arglist cat (^ ($ PLAN9) /dist/manindexbottom.html)))))))))) (simple (arglist (arglist mv (^ ($ i) .html)) (` (brace (| (simple (arglist echo (^ ($ i) .html))) (simple (arglist (arglist tr A-Z) a-z))))))))
compile: <nil>
compile: (for i (words <nil> */[~.]*.[0-9]*) (brace (; (j=(` (brace (| (simple (arglist echo ($ i))) (simple (arglist (arglist 9 sed) 's/\..*//')))) <nil>) (; (p=(` (brace (simple (arglist basename ($ j))))) <nil>) (; (d=(` (brace (simple (arglist (arglist basename -d) ($ j))))) <nil>) (; (if (paren (~ ($ p) (words <nil> 0intro))) (p=intro <nil>)) (; (if (paren (~ ($ verbose) (words <nil> yes))) (simple (arglist echo (^ (^ ($ d) /) ($ p))))) (; (|[2] (| (simple (arglist (arglist troff -manhtml) ($ i))) (>/tmp/manweb.html (simple (arglist (arglist (arglist troff2html -t) 'Plan 9 from User Space') <nil>))) (simple silencer) (| (brace (; (simple (arglist (arglist sed '/<!-- TRAILER -->/q') /tmp/manweb.html)) (; (simple (arglist cat (^ ($ PLAN9) /dist/mantrailer.html))) (simple (arglist (arglist (arglist sed -n) '/<!-- TRAILER -->/,$p') /tmp/manweb.html))))) (>(^ (^ (^ ($ d) /) ($ p)) .html) (simple (arglist (^ ($ PLAN9) /dist/addsrclinks) <nil>)))))))))))
compile: (simple (arglist rm /tmp/manweb.html))
compile: (simple (arglist cd (^ ($ PLAN9) /dist)))
compile: (simple (arglist ./fixurls (^ ($ PLAN9) /man/man*/*.html)))
compile: (simple (arglist exit ($ status)))
