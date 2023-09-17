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
compile: (nl='
' <nil>)
compile: <nil>
compile: (fn (words <nil> comma) (brace (if (paren (! (~ ($# *) (words (words <nil> 0) 1)))) (brace (; (simple (arglist (arglist echo -n) ($ 1))) (; (simple shift) (; (sep=' ' <nil>) (; (len=0 <nil>) (; (for i <nil> (brace (; (simple (arglist (arglist echo -n) (^ ($ sep) ($ i)))) (; (sep=', ' <nil>) (; (l=(` (brace (| (simple (arglist (arglist echo -n) (^ ($ sep) ($ i)))) (simple (arglist (arglist 9 wc) -c)))) <nil>) (; (len=(` (brace (| (simple (arglist echo (^ (^ ($ l) +) ($ len)))) (simple hoc))) <nil>) (if (paren (simple (arglist (arglist (arglist test ($ len)) -gt) 60))) (brace (; (sep=(^ (^ ',' ($ nl)) ' ') <nil>) (len=0 <nil>)))))))))) (simple echo))))))))))
compile: <nil>
compile: (if (paren (&& (~ ($# *) (words <nil> 1)) (~ ($ 1) (words <nil> all)))) (*=(` (brace (| (simple (arglist (arglist (arglist 9 ls) -p) ../pkg)) (simple (arglist (arglist grep -v) CVS)))) <nil>))
compile: <nil>
compile: (if (paren (~ ($# TREE9) (words <nil> 0))) (TREE9=($ PLAN9) <nil>))
compile: <nil>
compile: (date=(` (brace (simple (arglist (arglist u date) +%Y%m%d)))) <nil>)
compile: (march=(` (brace (simple (arglist uname -m)))) <nil>)
compile: (arch=all <nil>)
compile: (switch (paren (words <nil> ($ march))) (brace (; (simple (arglist case i*86)) (march=i386 <nil>))))
compile: <nil>
compile: (for i <nil> (@ (brace (; (if (paren (! (simple (arglist (arglist test -f) (^ ../pkg/ ($ i)))))) (brace (; (simple (arglist (arglist (arglist echo no) package) (^ ../pkg/ ($ i)))) (simple (arglist exit 1))))) (; (package=(^ plan9port- ($ i)) <nil>) (; (grepfor=($ i) <nil>) (; (simple (arglist . (^ ../pkg/ ($ i)))) (; (deb=(^ (^ (^ (^ (^ ($ package) _) ($ date)) _) ($ arch)) .deb) <nil>) (; (simple (arglist (arglist (arglist rm -rf) ($ i)) ($ deb))) (; (simple (arglist (arglist mkdir ($ i)) (^ ($ i) /DEBIAN))) (; (simple (arglist whatis grepfor)) (; (| (simple (arglist (arglist (arglist (arglist (arglist (arglist (arglist awk (^ (^ -v 'grepfor=') ($ grepfor))) -v) (^ 'pkg=' ($ i))) -v) (^ 'plan9=' ($ TREE9))) '
	BEGIN { print "grep for " grepfor >"/dev/stderr" }
	$2==grepfor {
		dir=$1
		sub("/[^/]+$", "/", dir)
		if(dir != lastdir){
			printf("mkdir -p ''%s''\n", pkg "/usr/local/plan9port/" dir);
			lastdir = dir
		}
		if($1 !~ /\/$/)
			printf("cp ''%s'' ''%s''\n", plan9 "/" $1, pkg "/usr/local/plan9port/" $1)
	}') (^ ($ TREE9) /dist/filelist))) (simple rc) (; (size=(` (brace (| (simple (arglist (arglist du -sk) ($ i))) (simple (arglist awk '{print $1}')))) <nil>) (; (>(^ ($ i) /DEBIAN/control) (brace (; (simple (arglist (arglist echo Package:) ($ package))) (; (simple (arglist (arglist echo Version:) ($ date))) (; (simple (arglist (arglist echo Architecture:) ($ arch))) (; (simple (arglist (arglist comma Depends:) ($ depends))) (; (simple (arglist (arglist comma Suggests:) ($ suggests))) (; (simple (arglist (arglist comma Conflicts:) ($ conflicts))) (; (simple (arglist (arglist echo Source:) plan9port-src)) (; (simple (arglist (arglist echo Installed-Size:) ($ size))) (; (simple (arglist (arglist echo Maintainer:) 'Russ Cox <rsc@swtch.com>')) (simple (arglist (arglist echo Description:) ($ desc)))))))))))))) (; (if (paren (simple (arglist (arglist test -d) (^ ($ i) /usr)))) (brace (@ (>(^ ($ i) /DEBIAN/md5sums) (brace (; (simple (arglist cd ($ i))) (| (simple (arglist (arglist (arglist (arglist find usr) -type) f) -print0)) (simple (arglist (arglist (arglist (arglist (arglist xargs -0) -n) 100) u) md5sum)))))))) (; (if not (simple (arglist (arglist (arglist (arglist (arglist (arglist echo '>>>') ($ package)) is) a) virtual) package.))) (; (simple (arglist (arglist (arglist dpkg -b) ($ i)) (^ pool/ ($ deb)))) (simple (arglist (arglist rm -rf) ($ i))))))))))))))))))))
compile: <nil>
compile: (simple (arglist exit ($ status)))
