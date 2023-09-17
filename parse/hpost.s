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
compile: (if (paren (! (~ ($ DEBUG) (words <nil> '')))) (simple (arglist (arglist flag x) +)))
compile: (REVFLAG='' <nil>)
compile: (if (paren (~ ($ LPCLASS) (words <nil> *reverse*))) (brace (switch (paren (words <nil> ($ REVERSE))) (brace (; (simple (arglist case '')) (; (REVFLAG=1 <nil>) (; (simple (arglist case 1)) (REVFLAG='' <nil>))))))))
compile: (if (paren (! (~ ($ REVFLAG) (words <nil> '')))) (simple postreverse))
compile: <nil>
compile: (if (paren (~ ($ NOHEAD) (words <nil> ''))) (brace (; (DATE=(` (brace (simple date))) <nil>) (; (face='FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF' <nil>) (; (facedom=(` (brace (simple (arglist (arglist awk (^ (^ '{ if(match("' ($ LPMACHID)) '", $1)) {print $2; exit}}')) (^ ($ PLAN9) /face/.machinelist))))) <nil>) (; (if (paren (~ ($# facedom) (words <nil> 0))) (facedom=($ LPMACHID) <nil>)) (; (facefile=(` (brace (simple (arglist (arglist awk (^ (^ (^ (^ '/^' ($ facedom)) '\/') ($ LPUSERID)) ' /{print $2}')) (^ ($ PLAN9) /face/48x48x4/.dict))))) <nil>) (; (facedepth=4 <nil>) (; (if (paren (~ ($# facefile) (words <nil> 0))) (brace (; (facefile=(` (brace (simple (arglist (arglist awk (^ (^ (^ (^ '/^' ($ facedom)) '\/') ($ LPUSERID)) ' /{print $2}')) (^ ($ PLAN9) /face/48x48x2/.dict))))) <nil>) (facedepth=2 <nil>)))) (; (if (paren (~ ($# facefile) (words <nil> 0))) (brace (; (facefile=(` (brace (simple (arglist (arglist awk (^ (^ (^ (^ '/^' ($ facedom)) '\/') ($ LPUSERID)) ' /{print $2}')) (^ ($ PLAN9) /face/48x48x1/.dict))))) <nil>) (facedepth=1 <nil>)))) (; (if (paren (~ ($# facefile) (words <nil> 0))) (brace (; (facefile=u/unknown.1 <nil>) (facedepth=1 <nil>)))) (; (facefile=(^ (^ (^ (^ ($ PLAN9) /face/48x48x) ($ facedepth)) /) ($ facefile)) <nil>) (; (if (paren (! (~ ($# facefile) (words (words <nil> 0) 1)))) (facefile=($sub facefile (words <nil> 1)) <nil>)) (; (if (paren (|| (~ ($# facefile) (words <nil> 0)) (! (simple (arglist (arglist test -f) ($ facefile)))))) (brace (; (facefile=(^ ($ PLAN9) /face/48x48x2/u/unknown.1) <nil>) (facedepth=2 <nil>)))) (if (paren (simple (arglist (arglist test -r) ($ facefile)))) (brace (switch (paren (words <nil> ($ facedepth))) (brace (; (simple (arglist (arglist case 1) 2)) (; (face=(` (brace (| (| (simple (arglist cat ($ facefile))) (simple (arglist (arglist (arglist (arglist sed -e) 's/0x//g') -e) 's/, *//g')) (simple (arglist (arglist tr 0123456789abcdef) fedcba9876543210)))) <nil>) (; (simple (arglist case 4)) (face=(` (brace (| (| (| (simple (arglist (arglist (arglist (arglist iconv -u) -c) k4) ($ facefile))) (>[2]/dev/null (simple (arglist (arglist (arglist (arglist (arglist dd -bs) 60) -skip) 1) <nil>))) (simple (arglist xd -b)) (simple (arglist sed 's/^[^ ]+ //;s/ //g')))) <nil>))))))))))))))))))))))
compile: <nil>
compile: <nil>
compile: <nil>
compile: (if (paren (~ ($ NOHEAD) (words <nil> ''))) (<<HERE (simple (arglist cat <nil>))))
compile: (if (paren (~ ($ NOHEAD) (words <nil> ''))) (switch (paren (words <nil> ($ LPCLASS))) (brace (; (simple (arglist case *hp4simx*)) (simple (arglist echo '
%% set the default papertray to be the lower tray for HP4siMX printers
	statusdict begin defaultpapertray end 1 ne {
		statusdict begin
			1 setdefaultpapertray
		end
	} if'))))))
compile: (if (paren (~ ($ NOHEAD) (words <nil> ''))) (<<HERE (simple (arglist cat <nil>))))
compile: <nil>
compile: (if (paren (~ ($ REVFLAG) (words <nil> ''))) (simple cat))
compile: (simple (arglist exit ''))
compile: (simple (arglist exit ($ status)))
