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
compile: (if (paren (! (~ ($ DEBUG) (words <nil> '')))) (simple (arglist (arglist flag x) +)))
compile: (PATCH='%!PS
%%Patch from lp' <nil>)
compile: (switch (paren (words <nil> ($ LPCLASS))) (brace (; (simple (arglist case *hp4simx*)) (PATCH=(^ ($ PATCH) '
%% set the default papertray to be the lower tray for HP4siMX printers
	statusdict begin defaultpapertray end 1 ne {
		statusdict begin
			1 setdefaultpapertray
		end
	} if') <nil>))))
compile: (for i (words <nil> (` (brace (| (simple (arglist echo ($ IBIN))) (simple (arglist (arglist awk -F,) '{ n=split($0, a, ","); for (i=1;i<=n;i++) print a[i]; }'))))) (brace (switch (paren (words <nil> ($ i))) (brace (; (simple (arglist case -P*)) (; (simple (arglist (arglist (arglist case man) manual) manualfeed)) (; (PATCH=(^ ($ PATCH) '
%%BeginFeature: *Select ManualFeed
[{ systemdict /languagelevel known {languagelevel 1 gt product (HP LaserJet 4Si) ne and} if {
    << /ManualFeed true >> setpagedevice
   } {statusdict begin /manualfeed true def end} ifelse
 } stopped cleartomark
%%EndFeature') <nil>) (; (simple (arglist case simplex)) (; (DUPLEX=0 <nil>) (; (simple (arglist case [0-9])) (; (PATCH=(^ (^ (^ (^ (^ ($ PATCH) '
%%BeginFeature: *Select InputTray
[{ systemdict /languagelevel known {languagelevel 1 gt product (HP LaserJet 4Si) ne and} if {
    << /MediaType (tray') ($ i)) ') >> setpagedevice
   } {statusdict begin ') ($ i)) ' setpapertray end} ifelse
 } stopped cleartomark
%%EndFeature') <nil>) (; (simple (arglist (arglist case 11x17) [Ll]edger)) (; (PATCH=(^ (^ (^ ($ PATCH) '
%%BeginFeature: *Select Ledger
[{ systemdict /languagelevel known {languagelevel 1 gt product (HP LaserJet 4Si) ne and} if {
    << /PageSize [792 1224] >> setpagedevice
   } {statusdict begin ') ($ i)) 'tray end} ifelse
 } stopped cleartomark
%%EndFeature') <nil>) (; (simple (arglist (arglist (arglist case transparency) vg) viewgraph)) (; (PATCH=(^ ($ PATCH) '
%%BeginFeature: *Select Transparency
[{ << /MediaType (Transparency) >> setpagedevice
 } stopped cleartomark
%%EndFeature') <nil>) (; (simple (arglist case *)) (>[1=2] (simple (arglist (arglist (arglist (arglist (arglist echo illegal) option) (^ '''' -i)) (^ ($ i) '''')) <nil>)))))))))))))))))))
compile: (if (paren (! (~ ($# DUPLEX) (words <nil> 0)))) (brace (; (switch (paren (words <nil> ($ DUPLEX))) (brace (; (simple (arglist case 0)) (; (DUPLEX=false <nil>) (; (simple (arglist case 1)) (DUPLEX=true <nil>)))))) (PATCH=(^ (^ (^ (^ (^ ($ PATCH) '
%%BeginFeature: *Set DuplexMode
[{ systemdict /languagelevel known {languagelevel 1 gt product (HP LaserJet 4Si) ne and} if {
    << /Duplex ') ($ DUPLEX)) '  >> setpagedevice
  } {statusdict /setduplexmode known {statusdict begin ') ($ DUPLEX)) ' setduplexmode end} if} ifelse
 } stopped cleartomark
%%EndFeature') <nil>))))
compile: (PATCH=(^ ($ PATCH) '
%%EndPatch from lp
') <nil>)
compile: (simple (arglist echo ($ PATCH)))
compile: <nil>
compile: (| (simple (arglist (arglist pdfgs ($ 1)) pswrite)) (simple (^ ($ LPLIB) /process/hpost))
compile: (simple (arglist exit ''))
compile: (simple (arglist exit ($ status)))
