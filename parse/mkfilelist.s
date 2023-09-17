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
compile: (@ (| (| (| (| (brace (; (simple (arglist cd ($ PLAN9))) (; (simple (arglist (arglist (arglist (arglist find .) -type) f) -print)) (| (simple (arglist (arglist (arglist (arglist find .) -type) d) -print)) (simple (arglist sed 's;$;/;'))))) (simple sort) (simple (arglist sed 's;^./;;')) (simple (arglist grep .)) (simple (arglist (arglist awk (^ (^ -vplan9 '=') ($ PLAN9))) '
	function cat(s) {
		print line0, s
		next
	}
	
	BEGIN{
		# Dependencies
		# print "bin: base"
		# print "devel: base bin"
		# print "dist: base"
		# print "faces: base"
		# print "font-asian: font-core"
		# print "font-bh: font-core"
		# print "font-proof: font-core"	
		# print "font-core: core"
		# print "devel: base, lib"
		# print "lp: base, faces"
		# print "sky: base"
		# print "sky-data: sky"
		# print "src: base, devel"
		# print "troff: base, postscript"
		# print "unixdist: base, src"
	}
	
	# Eliminate unmentionables.
	{ line0 = $0 }
	/^CVS\// { next }
	/\/CVS\// { next }
	/\.#/ { next }
	/\.cvsignore/ { next }	
	/^ChangeLog/ { next }
	/^config$/ { next }
	/^install.log$/ { next }
	/CVS.IEXIST/ { next }
	
	# Print with categories.
	/^(LICENSE|CHANGES|INSTALL|NOTES|TODO)/ { cat("base") }

	/^acid\// { cat("devel") }

	/^bin\/(9c|9l|9ar|9install)/ { cat("devel") }
	/^bin\/.*\/$/ { cat("base") }
	/^bin\/./ { 
		file=$1
		cmd = "file " plan9 "/''" $1 "'' | sed ''s/.*: //'' "
		type = cmd | getline
		close(cmd)
		$1=file
		if(type ~ /script/)
			cat("base")
		else
			cat("bin")
	}
	/^bin\/$/ { cat("base") }
	
	/^dict\// { cat("dict") }
	
	/^dist\/debian\/(dists|pool)/ { next }
	/^dist\// { cat("dist") }

	/^face\// { cat("faces") }

	/^font\/(big5|gb|jis|naga10|shinonome)/ { cat("font-asian") }
	/^font\/LICENSE/ { cat("font-bh") }
	/^font\/(luc|lucsans|lucm|pelm)\// { cat("font-bh") }
	/^font\/(MAP|fixed|misc|sample|smiley)/ { cat("font-core") }
	/^font\/(palatino|times|special)/ { cat("font-proof") }
	/^font\// { cat("font-core") }
	
	/^include\// { cat("devel") }

	/^lib\/.*\.a$/ { cat("lib") }
	/^lib\/(..spell|acme.rc|bclib|fortunes|gv|grap|keyboard|lex|unicode|units|words|yacc)/ { cat("base") }
	/^lib\/moveplan9/ { cat("base") }
	/^lib\/hyphen.tex/ { cat("troff") }
	/^lib\/linux-isnptl\.c/ { cat("src") }
	/^lib\/$/ { cat("base") }

	/^log\// { cat("base") }

	/^lp\// { cat("lp") }
	
	/^man\/man3/ { cat("devel") }
	/^man\// { cat("base") }
	
	/^ndb\// { cat("base") }
	
	/^news\// { cat("base") }
	
	/^plumb/ { cat("base") }
	
	/^postscript\/troff/ { cat("troff") }
	/^postscript\/font\/(Lucida|lsunr|NOTICE)/ { cat("postscript-bh") }
	/^postscript\// { cat("postscript") }

	/^proto/ { cat("base") }

	/^rcmain/ { cat("base") }

	/^sky\/$/ { cat("sky") }
	/^sky\/here/ { cat("sky") }
	/^sky\// { cat("sky-data") }
	
	/^(tmac|troff)\// { cat("troff") }
	
	/^src\/mk/ { cat("devel") }

	/^src/ { cat("src") }

	/^unix\// { cat("unixdist") }
	
	# Print warning about unsorted files.
	{ 
		print "unsorted: " $0 >"/dev/stderr"
	}
')))
compile: (simple (arglist exit ($ status)))
