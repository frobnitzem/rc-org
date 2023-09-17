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
compile: (ifs=' 	
' <nil>)
compile: <nil>
compile: (LPLIB=(^ ($ PLAN9) /lp) <nil>)
compile: (LPBIN=(^ ($ PLAN9) /bin/lpbin) <nil>)
compile: (LPSPOOL=(^ ($ LPLIB) /queue) <nil>)
compile: (LPLOGDIR=(^ ($ LPLIB) /log) <nil>)
compile: <nil>
compile: <nil>
compile: (LPTMP=/var/tmp <nil>)
compile: <nil>
compile: (path=(paren (words (words (words (words (words (words <nil> (^ ($ PLAN9) /bin)) /usr/local/bin) /usr/bin) /bin) (^ ($ LPLIB) /bin)) ($ LPBIN))) <nil>)
compile: <nil>
compile: (USAGE='usage:	lp [-d printer] [-p process] [options] [files]
		lp [-d printer] -q
		lp [-d printer] -k jobnos

		options include:
		-H		no header
		-L		landscape mode
		-c<n>		make <n> copies
		-f<font.size>	specify font and size
		-i<src>		take media from <src> input bin
		-l<n>		print <n> lines per logical page
		-m<n>		magnify <n> times
		-n<n>		print <n> logical pages per physical page
		-o<i-j,k>	print only pages i-j and k
		-r		reverse pages
		-x<n>		x page offset in inches
		-y<n>		y page offset in inches' <nil>)
compile: <nil>
compile: (simple (arglist umask 000))
compile: (THIS_HOST=($ sysname) <nil>)
compile: (if (paren (~ ($# THIS_HOST) (words <nil> 0))) (THIS_HOST=(` (brace (| (simple hostname) (simple (arglist sed 's/\..*//')))) <nil>))
compile: (if (paren (~ ($# THIS_HOST) (words <nil> 0))) (THIS_HOST=gnot <nil>))
compile: <nil>
compile: <nil>
compile: <nil>
compile: <nil>
compile: (fn (words <nil> lpsub) (brace (; (_LPSUB=($ 1) <nil>) (; (simple shift) (; (_LPCMD=($ 1) <nil>) (; (simple shift) (@ (brace (; (path=(paren (words (words <nil> (^ (^ ($ LPLIB) /) ($ _LPSUB))) ($ path))) <nil>) (simple (arglist (^ (^ (^ (^ ($ LPLIB) /) ($ _LPSUB)) /) ($ _LPCMD)) ($ *))))))))))))
compile: <nil>
compile: <nil>
compile: <nil>
compile: (fn (words <nil> lpinput) (brace (; (_LPFILE=($ 1) <nil>) (; (simple shift) (; (if (paren (~ ($ _LPFILE) (words <nil> ''))) (simple ($ *))) (if not (<($ _LPFILE) (simple (arglist ($ *) <nil>)))))))))
compile: <nil>
compile: (LPMACHID=($ THIS_HOST) <nil>)
compile: (THIS_USERID=($ user) <nil>)
compile: (LPUSERID=($ THIS_USERID) <nil>)
compile: (LPLOC='' <nil>)
compile: <nil>
compile: <nil>
compile: (if (paren (&& (~ ($# LPDEST) (words <nil> 0)) (simple (arglist (arglist test -f) (^ ($ LPLIB) /default))))) (LPDEST=(` (brace (simple (arglist cat (^ ($ LPLIB) /default))))) <nil>))
compile: <nil>
compile: <nil>
compile: <nil>
compile: (XOFF='' <nil>)
compile: (YOFF='' <nil>)
compile: (POINT='' <nil>)
compile: (FONT='' <nil>)
compile: (LINES='' <nil>)
compile: (LAND='' <nil>)
compile: (COPIES='' <nil>)
compile: (MAG='' <nil>)
compile: (NPAG='' <nil>)
compile: (OLIST='' <nil>)
compile: (IBIN='' <nil>)
compile: (REVERSE='' <nil>)
compile: (NOHEAD='' <nil>)
compile: (TRAY='' <nil>)
compile: <nil>
compile: (; (FLAGD=(paren <nil>) <nil>) (; (FLAGH=(paren <nil>) <nil>) (; (FLAGL=(paren <nil>) <nil>) (; (FLAGM=(paren <nil>) <nil>) (; (FLAGQ=(paren <nil>) <nil>) (; (FLAGc=(paren <nil>) <nil>) (; (FLAGd=(paren <nil>) <nil>) (FLAGf=(paren <nil>) <nil>))))))))
compile: (; (FLAGi=(paren <nil>) <nil>) (; (FLAGk=(paren <nil>) <nil>) (; (FLAGl=(paren <nil>) <nil>) (; (FLAGm=(paren <nil>) <nil>) (; (FLAGn=(paren <nil>) <nil>) (; (FLAGo=(paren <nil>) <nil>) (; (FLAGp=(paren <nil>) <nil>) (FLAGq=(paren <nil>) <nil>))))))))
compile: (; (FLAGr=(paren <nil>) <nil>) (; (FLAGt=(paren <nil>) <nil>) (; (FLAGu=(paren <nil>) <nil>) (; (FLAGx=(paren <nil>) <nil>) (FLAGy=(paren <nil>) <nil>)))))
compile: <nil>
compile: (simple (arglist eval (` (brace (simple (arglist (arglist getflags DHLM:1QRc:1d:1f:1i:1kl:1m:1n:1o:1p:1qrt:1u:1x:1y:1) ($ *)))))))
compile: (if (paren (! (~ ($ status) (words <nil> '')))) (simple (arglist exit ($ status))))
compile: (; (if (paren (! (~ ($# FLAGD) (words <nil> 0)))) (brace (; (DEBUG=1 <nil>) (simple (arglist (arglist flag x) +))))) (if not (brace (; (DEBUG='' <nil>) (simple (arglist (arglist flag x) -))))))
compile: (; (if (paren (! (~ ($# FLAGH) (words <nil> 0)))) (NOHEAD=1 <nil>)) (if not (NOHEAD='' <nil>)))
compile: (; (if (paren (! (~ ($# FLAGL) (words <nil> 0)))) (LAND=1 <nil>)) (if not (LAND='' <nil>)))
compile: <nil>
compile: (if (paren (&& (! (~ ($# FLAGM) (words <nil> 0))) (~ ($ LPUSERID) (words <nil> daemon)))) (LPMACHID=($ FLAGM) <nil>))
compile: (; (if (paren (! (~ ($# FLAGQ) (words <nil> 0)))) (QONLY=1 <nil>)) (if not (QONLY='' <nil>)))
compile: (; (if (paren (! (~ ($# FLAGR) (words <nil> 0)))) (RESET=1 <nil>)) (if not (RESET='' <nil>)))
compile: (; (if (paren (! (~ ($# FLAGc) (words <nil> 0)))) (COPIES=($ FLAGc) <nil>)) (if not (COPIES=1 <nil>)))
compile: (if (paren (! (~ ($# FLAGd) (words <nil> 0)))) (brace (switch (paren (words <nil> ($ FLAGd))) (brace (; (simple (arglist case '?')) (; (simple (arglist (arglist (arglist exec awk) 'BEGIN{printf "device       location  host                 class\n"}
			/^[^#]/	{printf "%-12s %-9s %-20s %s\n", $1, $2, $3, $6 }') (^ ($ LPLIB) /devices))) (; (simple (arglist case *)) (LPDEST=($ FLAGd) <nil>))))))))
compile: (if (paren (! (~ ($# FLAGf) (words <nil> 0)))) (simple (arglist eval (` (brace (| (simple (arglist echo ($ FLAGf))) (simple (arglist (arglist sed -e) 's/([^.]*)\.([0-9.]*)/FONT=\1;POINT=\2;/')))))))
compile: (if (paren (! (~ ($# FLAGi) (words <nil> 0)))) (IBIN=($ FLAGi) <nil>))
compile: (; (if (paren (! (~ ($# FLAGk) (words <nil> 0)))) (KILLFLAG=1 <nil>)) (if not (KILLFLAG=0 <nil>)))
compile: (if (paren (! (~ ($# FLAGl) (words <nil> 0)))) (LINES=($ FLAGl) <nil>))
compile: (if (paren (! (~ ($# FLAGm) (words <nil> 0)))) (MAG=($ FLAGm) <nil>))
compile: (if (paren (! (~ ($# FLAGn) (words <nil> 0)))) (NPAG=($ FLAGn) <nil>))
compile: (if (paren (! (~ ($# FLAGo) (words <nil> 0)))) (OLIST=(^ -o ($ FLAGo)) <nil>))
compile: (if (paren (! (~ ($# FLAGp) (words <nil> 0)))) (brace (switch (paren (words <nil> FLAGp)) (brace (; (simple (arglist case '?')) (; (simple (arglist (arglist exec ls) (^ ($ LPLIB) /process))) (; (simple (arglist case *)) (LPPROC=($ FLAGp) <nil>))))))))
compile: (; (if (paren (! (~ ($# FLAGq) (words <nil> 0)))) (LPQ=1 <nil>)) (if not (LPQ=0 <nil>)))
compile: (if (paren (! (~ ($# FLAGr) (words <nil> 0)))) (brace (switch (paren (words <nil> ($ REVERSE))) (brace (; (simple (arglist case '')) (; (REVERSE=1 <nil>) (; (simple (arglist case 1)) (REVERSE='' <nil>))))))))
compile: (if (paren (! (~ ($# FLAGt) (words <nil> 0)))) (TRAY=($ FLAGt) <nil>))
compile: <nil>
compile: (if (paren (! (~ ($# FLAGu) (words <nil> 0)))) (LPUSERID=($ FLAGu) <nil>))
compile: (if (paren (! (~ ($# FLAGx) (words <nil> 0)))) (XOFF=($ FLAGx) <nil>))
compile: (if (paren (! (~ ($# FLAGy) (words <nil> 0)))) (YOFF=($ FLAGy) <nil>))
compile: <nil>
compile: (if (paren (~ ($# LPDEST) (words <nil> 0))) (brace (; (>[1=2] (simple (arglist (arglist echo 'Set environment variable LPDEST or use the
''-d printer'' option to set the destination.') <nil>))) (simple (arglist exit 'LPDEST not set')))))
compile: (if (paren (~ ($ LPDEST) (words <nil> */*))) (brace (; (LPLOC=(` (brace (| (simple (arglist echo ($ LPDEST))) (simple (arglist sed 's/^(.*)\/(.*)/\1/')))) <nil>) (LPDEST=(` (brace (| (simple (arglist echo ($ LPDEST))) (simple (arglist sed 's/^(.*)\/(.*)/\2/')))) <nil>))))
compile: <nil>
compile: <nil>
compile: <nil>
compile: (LPDLINE=(` (brace (simple (arglist (arglist grep (^ (^ '^' ($ LPDEST)) '[ 	]')) (^ ($ LPLIB) /devices))))) <nil>)
compile: (if (paren (! (~ ($ status) (words <nil> '')))) (brace (; (>[1=2] (simple (arglist (arglist echo (^ (^ (^ (^ 'device ' ($ LPDEST)) ' is not in ') ($ LPLIB)) '/devices')) <nil>))) (simple (arglist exit 'LPDEST is bad')))))
compile: (LOC=($sub LPDLINE (words <nil> 2)) <nil>)
compile: (DEST_HOST=($sub LPDLINE (words <nil> 3)) <nil>)
compile: (OUTDEV=($sub LPDLINE (words <nil> 4)) <nil>)
compile: (SPEED=($sub LPDLINE (words <nil> 5)) <nil>)
compile: (LPCLASS=($sub LPDLINE (words <nil> 6)) <nil>)
compile: (if (paren (~ ($# LPPROC) (words <nil> 0))) (LPPROC=($sub LPDLINE (words <nil> 7)) <nil>))
compile: (SPOOLER=($sub LPDLINE (words <nil> 8)) <nil>)
compile: (STAT=($sub LPDLINE (words <nil> 9)) <nil>)
compile: (KILL=($sub LPDLINE (words <nil> 10)) <nil>)
compile: (DAEMON=($sub LPDLINE (words <nil> 11)) <nil>)
compile: (SCHED=($sub LPDLINE (words <nil> 12)) <nil>)
compile: <nil>
compile: <nil>
compile: <nil>
compile: <nil>
compile: (if (paren (~ ($ KILLFLAG) (words <nil> 1))) (switch (paren (words <nil> ($ KILL))) (brace (; (simple (arglist case -)) (; (>[1=2] (simple (arglist (arglist (arglist (arglist (arglist (arglist (arglist echo kill) option) not) available) on) ($ LPDEST)) <nil>))) (; (simple (arglist exit 'kill n/a')) (; (simple (arglist case *)) (; (simple (arglist (arglist (arglist lpsub kill) ($ KILL)) ($ *))) (simple (arglist exit ($ status)))))))))))
compile: <nil>
compile: <nil>
compile: (if (paren (~ ($ LPQ) (words <nil> 1))) (switch (paren (words <nil> ($ STAT))) (brace (; (simple (arglist case -)) (; (>[1=2] (simple (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist echo queue) status) option) not) available) on) ($ LPDEST)) <nil>))) (; (simple (arglist exit 'stat option not available')) (; (simple (arglist case *)) (; (</dev/null (simple (arglist (arglist (arglist (arglist lpsub stat) ($ STAT)) ($ *)) <nil>))) (simple (arglist exit ($ status)))))))))))
compile: <nil>
compile: <nil>
compile: (DATE=(` (brace (simple date))) <nil>)
compile: (LPLOG=(^ (^ ($ LPLOGDIR) /) ($ LPDEST)) <nil>)
compile: (if (paren (! (simple (arglist (arglist test -e) ($ LPLOG))))) (brace (; (>($ LPLOG) <nil>) (>[2]/dev/null (simple (arglist (arglist (arglist chmod +rwa) ($ LPLOG)) <nil>))))))
compile: <nil>
compile: (if (paren (~ ($ RESET) (words <nil> ''))) (brace (switch (paren (words <nil> ($ SPOOLER))) (brace (; (simple (arglist case -)) (; (>[1=2] (simple (arglist (arglist (arglist (arglist (arglist (arglist (arglist echo spooler) does) not) exist) for) ($ LPDEST)) <nil>))) (; (simple (arglist exit 'no spooler')) (; (simple (arglist case *)) (; (path=(paren (words (words <nil> (^ ($ LPLIB) /spooler)) ($ path))) <nil>) (; (if (paren (~ ($# *) (words <nil> 0))) (simple ($ SPOOLER))) (if not (simple (arglist ($ SPOOLER) ($ *))))))))))))))
compile: <nil>
compile: (if not (brace (; (>[1=2] (simple (arglist (arglist (arglist (arglist (arglist (arglist echo restarting) daemon) for) printer) ($ LPDEST)) <nil>))) (; (>>($ LPLOG) (simple (arglist (arglist (arglist (arglist echo (` (brace (simple date)))) restarting) daemon) <nil>))) (; (simple (arglist UNLOCK (^ (^ ($ LPSPOOL) /) ($ LPDEST)))) (simple (arglist sleep 5)))))))
compile: <nil>
compile: <nil>
compile: (if (paren (~ ($ QONLY) (words <nil> ''))) (brace (if (paren (! (~ ($ DAEMON) (words <nil> -)))) (brace (& (>>($ LPLOG) (>[2=1] (simple (arglist (arglist (arglist (arglist (arglist lpsub daemon) ($ DAEMON)) ($ *)) <nil>) <nil>)))))))))
compile: (simple (arglist exit ''))
compile: (simple (arglist exit ($ status)))
