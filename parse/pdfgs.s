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
compile: <nil>
compile: <nil>
compile: (switch (paren (words <nil> ($# *))) (brace (; (simple (arglist case 2)) (; (GSDEVICE=($ 2) <nil>) (; (simple (arglist case 1)) (; (GSDEVICE=(` (brace (| (simple (arglist echo ($ LPCLASS))) (simple (arglist sed 's/(.*\+)?gs!([^+]*)(\+.*)?/\2/')))) <nil>) (; (simple (arglist case *)) (>[1=2] (simple (arglist (arglist echo 'usage: pdfgs pdffile [gsdev]') <nil>))))))))))
compile: <nil>
compile: (GSTMPFILE=(^ /tmp/pdf ($ pid)) <nil>)
compile: (GSOPT=(paren (words (words (words (words (words (words (words <nil> (^ '-sDEVICE=' ($ GSDEVICE))) (^ '-sOutputFile=' ($ GSTMPFILE))) -dSAFER) -dNOPAUSE) -dQUIET) -dBATCH) -dNOPAUSE)) <nil>)
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
compile: (if (paren (~ ($ GSDEVICE) (words <nil> pswrite))) (GSOPT=(paren (words (words <nil> ($ GSOPT)) '-dLanguageLevel=1')) <nil>))
compile: <nil>
compile: (if (paren (~ ($ OLIST) (words <nil> ''))) (simple (arglist (arglist gs ($ GSOPT)) ($ 1))))
compile: (if not (brace (; (PGLIST=(` (brace (| (| (simple (arglist echo ($ OLIST))) (simple (arglist sed 's/-o//;s/,/ /g;s/	/ /g')) (simple (arglist (arglist tr -cd) '0-9 -')))) <nil>) (; (GSPGLIST=(paren <nil>) <nil>) (; (for i (words <nil> ($ PGLIST)) (brace (switch (paren (words <nil> ($ i))) (brace (; (simple (arglist case -*)) (; (GSPGLIST=(paren (words (words <nil> ($ GSPGLIST)) (` (brace (simple (arglist (arglist seq 1) (` (brace (| (simple (arglist echo ($ i))) (simple (arglist (arglist tr -d) '-')))))))))) <nil>) (; (simple (arglist case *-)) (; (GSPGLIST=(paren (words (words <nil> ($ GSPGLIST)) (` (brace (simple (arglist (arglist seq (` (brace (| (simple (arglist echo ($ i))) (simple (arglist (arglist tr -d) '-'))))) 100)))))) <nil>) (; (simple (arglist case *-*)) (; (GSPGLIST=(paren (words (words <nil> ($ GSPGLIST)) (` (brace (simple (arglist seq (` (brace (| (simple (arglist echo ($ i))) (simple (arglist (arglist tr '-') ' ')))))))))) <nil>) (; (simple (arglist case *)) (GSPGLIST=(paren (words (words <nil> ($ GSPGLIST)) ($ i))) <nil>)))))))))))) (; (GSPGLIST=($" GSPGLIST) <nil>) (| (simple (arglist echo (^ (^ (^ (^ '
		/Page null def
		/Page# 0 def
		/PDFSave null def
		/DSCPageCount 0 def
		/DoPDFPage {dup /Page# exch store pdfgetpage pdfshowpage} def
		GS_PDF_ProcSet begin
		pdfdict begin
		(' ($ 1)) ') (r) file pdfopen begin
		/npage pdfpagecount def
		[') ($ GSPGLIST)) ']
		{
			dup dup
				1 ge exch npage le and 
				{ DoPDFPage }
				{ pop }
			ifelse
		} forall
	'))) (>/dev/null (>[2=1] (simple (arglist (arglist (arglist (arglist gs ($ GSOPT)) -) <nil>) <nil>))))))))))
compile: <nil>
compile: (simple (arglist cat ($ GSTMPFILE)))
compile: (simple (arglist (arglist rm -f) ($ GSTMPFILE)))
compile: (simple (arglist exit ''))
compile: (simple (arglist exit ($ status)))
