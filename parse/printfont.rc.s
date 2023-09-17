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
compile: (POSTLIB=/usr/local/plan9/postscript/prologues <nil>)
compile: (PROLOGUE=(^ ($ POSTLIB) /printfont.ps) <nil>)
compile: <nil>
compile: (OPTIONS='' <nil>)
compile: (COPYFILE='' <nil>)
compile: (MODE=portrait <nil>)
compile: (FONTENCODING=Default <nil>)
compile: <nil>
compile: (NONCONFORMING='%!PS' <nil>)
compile: (ENDPROLOG='%%EndProlog' <nil>)
compile: (BEGINSETUP='%%BeginSetup' <nil>)
compile: (ENDSETUP='%%EndSetup' <nil>)
compile: (TRAILER='%%Trailer' <nil>)
compile: <nil>
compile: (SETUP=setup <nil>)
compile: <nil>
compile: (while (paren (&& (! (~ ($# *) (words <nil> 0))) (~ ($ 1) (words <nil> -*)))) (brace (; (switch (paren (words <nil> ($ 1))) (brace (; (simple (arglist case -a)) (; (simple shift) (; (OPTIONS=(^ ($ OPTIONS) ' /axescount $1 def') <nil>) (; (simple (arglist case -a*)) (; (OPTIONS=(^ (^ ($ OPTIONS) ' /axescount ') (` (brace (| (simple (arglist echo ($ 1))) (simple (arglist sed s/-a//))))) (simple ' def')) (; (simple (arglist case -b)) (; (simple shift) (; (OPTIONS=(^ (^ (^ ($ OPTIONS) ' /radix ') ($ 1)) ' def') <nil>) (; (simple (arglist case -b*)) (; (OPTIONS=(^ (^ ($ OPTIONS) ' /radix ') (` (brace (| (simple (arglist echo ($ 1))) (simple (arglist sed s/-b//))))) (simple ' def')) (; (simple (arglist case -c)) (; (simple shift) (; (OPTIONS=(^ (^ (^ ($ OPTIONS) ' /#copies ') ($ 1)) ' store') <nil>) (; (simple (arglist case -c*)) (; (OPTIONS=(^ (^ ($ OPTIONS) ' /#copies ') (` (brace (| (simple (arglist echo ($ 1))) (simple (arglist sed s/-c//))))) (simple ' store')) (; (simple (arglist case -f)) (; (simple shift) (; (OPTIONS=(^ (^ (^ ($ OPTIONS) ' /labelfont /') ($ 1)) ' def') <nil>) (; (simple (arglist case -f*)) (; (OPTIONS=(^ (^ ($ OPTIONS) ' /labelfont /') (` (brace (| (simple (arglist echo ($ 1))) (simple (arglist sed s/-f//))))) (simple ' def')) (; (simple (arglist case -g)) (; (simple shift) (; (OPTIONS=(^ (^ (^ ($ OPTIONS) ' /graynotdef ') ($ 1)) ' def') <nil>) (; (simple (arglist case -g*)) (; (OPTIONS=(^ (^ ($ OPTIONS) ' /graynotdef ') (` (brace (| (simple (arglist echo ($ 1))) (simple (arglist sed s/-g//))))) (simple ' def')) (; (simple (arglist case -p)) (; (simple shift) (; (MODE=($ 1) <nil>) (; (simple (arglist case -p*)) (; (MODE=(` (brace (| (simple (arglist echo ($ 1))) (simple (arglist sed s/-p//)))) <nil>) (; (simple (arglist case -q)) (; (OPTIONS=(^ ($ OPTIONS) ' /longnames false def /charwidth false def') <nil>) (; (simple (arglist case -m)) (; (simple shift) (; (OPTIONS=(^ (^ (^ ($ OPTIONS) ' /magnification ') ($ 1)) ' def') <nil>) (; (simple (arglist case -m*)) (; (OPTIONS=(^ (^ ($ OPTIONS) ' /magnification ') (` (brace (| (simple (arglist echo ($ 1))) (simple (arglist sed s/-m//))))) (simple ' def')) (; (simple (arglist case -v)) (; (OPTIONS=(^ ($ OPTIONS) ' /longnames true def /charwidth true def') <nil>) (; (simple (arglist case -w)) (; (simple shift) (; (OPTIONS=(^ (^ (^ ($ OPTIONS) ' /linewidth ') ($ 1)) ' def') <nil>) (; (simple (arglist case -w*)) (; (OPTIONS=(^ (^ ($ OPTIONS) ' /linewidth ') (` (brace (| (simple (arglist echo ($ 1))) (simple (arglist sed s/-w//))))) (simple ' def')) (; (simple (arglist case -x)) (; (simple shift) (; (OPTIONS=(^ (^ (^ ($ OPTIONS) ' /xoffset ') ($ 1)) ' def') <nil>) (; (simple (arglist case -x*)) (; (OPTIONS=(^ (^ ($ OPTIONS) ' /xoffset ') (` (brace (| (simple (arglist echo ($ 1))) (simple (arglist sed s/-x//))))) (simple ' def')) (; (simple (arglist case -y)) (; (simple shift) (; (OPTIONS=(^ (^ (^ ($ OPTIONS) ' /yoffset ') ($ 1)) ' def') <nil>) (; (simple (arglist case -y*)) (; (OPTIONS=(^ (^ ($ OPTIONS) ' /yoffset ') (` (brace (| (simple (arglist echo ($ 1))) (simple (arglist sed s/-y//))))) (simple ' def')) (; (simple (arglist case -z)) (; (simple shift) (; (OPTIONS=(^ (^ (^ ($ OPTIONS) ' /zerocell ') ($ 1)) ' def') <nil>) (; (simple (arglist case -z*)) (; (OPTIONS=(^ (^ ($ OPTIONS) ' /zerocell ') (` (brace (| (simple (arglist echo ($ 1))) (simple (arglist sed s/-z//))))) (simple ' def')) (; (simple (arglist case -C)) (; (simple shift) (; (COPYFILE=(^ (^ ($ COPYFILE) ' ') ($ 1)) <nil>) (; (simple (arglist case -C*)) (; (COPYFILE=(^ (^ ($ COPYFILE) ' ') (` (brace (| (simple (arglist echo ($ 1))) (simple (arglist sed s/-C//))))) <nil>) (; (simple (arglist case -E)) (; (simple shift) (; (FONTENCODING=($ 1) <nil>) (; (simple (arglist case -E*)) (; (FONTENCODING=(` (brace (| (simple (arglist echo ($ 1))) (simple (arglist sed s/-E//)))) <nil>) (; (simple (arglist case -L)) (; (simple shift) (; (PROLOGUE=($ 1) <nil>) (; (simple (arglist case -L*)) (; (PROLOGUE=(` (brace (| (simple (arglist echo ($ 1))) (simple (arglist sed s/-L//)))) <nil>) (; (simple (arglist case -*)) (; (>[1=2] (simple (arglist (arglist echo (^ (^ (^ ($ 0) :) ' illegal option ') ($ 1))) <nil>))) (simple (arglist exit 1)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (simple shift))))
compile: <nil>
compile: (switch (paren (words <nil> ($ MODE))) (brace (; (simple (arglist case l*)) (; (OPTIONS=(^ ($ OPTIONS) ' /landscape true def') <nil>) (; (simple (arglist case *)) (OPTIONS=(^ ($ OPTIONS) ' /landscape false def') <nil>))))))
compile: <nil>
compile: (simple (arglist echo ($ NONCONFORMING)))
compile: (simple (arglist cat ($ PROLOGUE)))
compile: (simple (arglist echo ($ ENDPROLOG)))
compile: (simple (arglist echo ($ BEGINSETUP)))
compile: (if (paren (|| (~ ($# COPYFILE) (words <nil> 0)) (~ ($ COPYFILE) (words <nil> '')))) (COPYFILE=/dev/null <nil>))
compile: (simple (arglist cat ($ COPYFILE)))
compile: (simple (arglist echo ($ OPTIONS)))
compile: <nil>
compile: (switch (paren (words <nil> ($ FONTENCODING))) (brace (; (simple (arglist case /*)) (; (simple (arglist cat ($ FONTENCODING))) (; (simple (arglist case ?*)) (>[2]/dev/null (simple (arglist (arglist cat (^ (^ (^ ($ POSTLIB) /) ($ FONTENCODING)) .enc)) <nil>))))))))
compile: <nil>
compile: (simple (arglist echo ($ SETUP)))
compile: (simple (arglist echo ($ ENDSETUP)))
compile: <nil>
compile: (for i <nil> (brace (switch (paren (words <nil> ($ i))) (brace (; (simple (arglist case all)) (; (simple (arglist echo AllFonts)) (; (simple (arglist case /*)) (; (simple (arglist echo (^ ($ i) ' PrintFont'))) (; (simple (arglist case ?*)) (simple (arglist echo (^ (^ / ($ i)) ' PrintFont'))))))))))))
compile: <nil>
compile: (simple (arglist echo ($ TRAILER)))
compile: (simple (arglist exit ($ status)))
