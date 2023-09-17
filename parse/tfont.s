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
compile: (simple (arglist (arglist (arglist (arglist (arglist (arglist rm *.tpost) *.troff) *.pfb) *.pfa) *.afm) map.sfd))
compile: <nil>
compile: (hex1=(paren (words (words (words (words (words (words (words (words (words (words (words (words (words (words (words (words <nil> 0) 1) 2) 3) 4) 5) 6) 7) 8) 9) A) B) C) D) E) F)) <nil>)
compile: (hex=(paren <nil>) <nil>)
compile: (for i (words <nil> ($ hex1)) (for j (words <nil> ($ hex1)) (hex=(paren (words (words <nil> ($ hex)) (^ ($ i) ($ j)))) <nil>)))
compile: (>map.sfd (brace (for h (words <nil> ($ hex)) (simple (arglist (arglist echo ($ h)) (^ (^ (^ (^ 0x ($ h)) 00_0x) ($ h)) FF))))))
compile: (for font <nil> (brace (; (f0=($ font) <nil>) (; (if (paren (~ ($ font) (words <nil> *.ttf))) (font=(` (brace (simple (arglist (arglist (arglist 9 basename) ($ font)) .ttf)))) <nil>)) (; (if not (if (paren (~ ($ font) (words <nil> *.sfd))) (font=(` (brace (simple (arglist (arglist (arglist 9 basename) ($ font)) .sfd)))) <nil>))) (; (>fontforge.in (simple (arglist (arglist echo (^ (^ (^ (^ (^ (^ (^ '
import fontforge
f = fontforge.open("' ($ f0)) '")
ff = fontforge.open("./') ($ f0)) '")
changed = True
while changed:
	changed = False
	for i in range(0, len(f)):
		try:
			f[i].temporary = [ ]
		except:
			pass
	
	for i in range(0, len(f)):
		try:
			f[i].temporary.append(i)
		except:
			pass
	
	for i in range(0, len(f)):
		try:
			g = f[i]
			codes = g.temporary
			if len(codes) > 1:
				print "Doubled: ", g.temporary
				gg = ff[i]
				f.removeGlyph(g)
				for j in range(1, len(codes)):
					f.createMappedChar(codes[j])
				f.createInterpolatedGlyph(gg, gg, 0)
				changed = True
		except:
			pass

f.generate("') ($ font)) %s.pfb) '", "", ("afm",), 72, "map.sfd")
')) <nil>))) (; (simple (arglist (arglist (arglist fontforge '-lang=py') -script) fontforge.in)) (; (>(^ ($ font) .troff) (brace (; (simple (arglist (arglist echo name) ($ font))) (simple (arglist (arglist echo fontname) ($ font)))))) (; (>(^ ($ font) .tpost) <nil>) (; (for h (words <nil> ($ hex)) (brace (if (paren (simple (arglist (arglist test -f) (^ (^ ($ font) ($ h)) .pfb)))) (brace (; (simple (arglist pfb2pfa (^ (^ ($ font) ($ h)) .pfb))) (; (simple (arglist (arglist mv (^ (^ ($ font) ($ h)) .pfa)) (^ (^ /usr/local/plan9port/postscript/font/ ($ font)) ($ h)))) (; (>>(^ ($ font) .troff) (simple (arglist (arglist (arglist (arglist (arglist afm2troff -h) -o) (^ (^ 0x ($ h)) 00)) (^ (^ ($ font) ($ h)) .afm)) <nil>))) (>>(^ ($ font) .tpost) (simple (arglist (arglist (arglist (arglist echo (^ (^ 0x ($ h)) 00)) (^ (^ 0x ($ h)) FF)) (^ ($ font) ($ h))) <nil>)))))))))) (; (>>(^ ($ font) .tpost) (brace (; (simple (arglist echo (^ (^ '0x0027 0x0027 0x19 ' ($ font)) '20  # map apostrophe to right quote'))) (simple (arglist echo (^ (^ '0x0060 0x0060 0x18 ' ($ font)) '20  # map grave to left quote')))))) (; (<(^ ($ PLAN9) /dist/troff/devutf.sam) (simple (arglist (arglist (arglist sam -d) (^ ($ font) .troff)) <nil>))) (; (if (paren (~ ($ font) (words <nil> *Mono*))) (<(^ ($ PLAN9) /dist/troff/mono.sam) (simple (arglist (arglist (arglist sam -d) (^ ($ font) .troff)) <nil>)))) (; (simple (arglist (arglist cp (^ ($ font) .troff)) (^ /usr/local/plan9port/troff/font/devutf/ ($ font)))) (simple (arglist (arglist cp (^ ($ font) .tpost)) (^ /usr/local/plan9port/postscript/troff/ ($ font))))))))))))))))))
compile: (simple (arglist exit ($ status)))
