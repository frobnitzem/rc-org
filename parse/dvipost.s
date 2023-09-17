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
compile: (if (paren (~ ($ DEBUG) (words <nil> 1))) (simple (arglist (arglist flag x) +)))
compile: <nil>
compile: (PATCH='%!PS-Adobe-2.0' <nil>)
compile: (switch (paren (words <nil> ($ LPCLASS))) (brace (; (simple (arglist case *hp4simx*)) (PATCH=(^ ($ PATCH) '
%% set the default papertray to be the lower tray for HP4siMX printers
	statusdict begin defaultpapertray end 1 ne {
		statusdict begin
			1 setdefaultpapertray
		end
	} if') <nil>))))
compile: (for i (words <nil> (` (brace (| (simple (arglist echo ($ IBIN))) (simple (arglist (arglist awk -F,) '{ n=split($0, a, ","); for (i=1;i<=n;i++) print a[i]; }'))))) (brace (switch (paren (words <nil> ($ i))) (brace (; (simple (arglist (arglist (arglist case man) manual) manualfeed)) (; (PATCH=(^ ($ PATCH) '
%%BeginFeature: *Select ManualFeed
[{ systemdict /languagelevel known {languagelevel 1 gt product (HP LaserJet 4Si) ne and} if {
    << /ManualFeed true >> setpagedevice
   } {statusdict begin /manualfeed true def end} ifelse
 } stopped cleartomark
%%EndFeature') <nil>) (; (simple (arglist case simplex)) (; (DUPLEX=0 <nil>) (; (simple (arglist case [0-9])) (; (switch (paren (words <nil> ($ LPCLASS))) (brace (; (simple (arglist case *post2*)) (; (switch (paren (words <nil> ($ i))) (brace (; (simple (arglist case 0)) (; (PATCH=(^ ($ PATCH) '
systemdict/languagelevel known {languagelevel 2 eq {true (0) startjob dup not
{/exitserver errordict/invalidaccess get exec}if}{false}ifelse}{false}ifelse
{
  currentpagedevice/InputAttributes get {0 get} stopped
  {pop pop} {2 dict dup /InputAttributes 1 dict dup
  /Priority[0] put put dup /TraySwitch false put setpagedevice} ifelse
  false (0) startjob pop
} if') <nil>) (; (simple (arglist case 1)) (PATCH=(^ ($ PATCH) '
systemdict/languagelevel known {languagelevel 2 eq {true (0) startjob dup not
{/exitserver errordict/invalidaccess get exec}if}{false}ifelse}{false}ifelse
{
  currentpagedevice/InputAttributes get {1 get} stopped
  {pop pop} {2 dict dup /InputAttributes 1 dict dup
  /Priority[1] put put dup /TraySwitch false put setpagedevice} ifelse
  false (0) startjob pop
} if') <nil>)))))) (; (simple (arglist case *)) (PATCH=(^ ($ PATCH) '
statusdict begin $i setpapertray end') <nil>)))))) (; (simple (arglist (arglist case 11x17) ledger)) (PATCH=(^ (^ (^ ($ PATCH) '
statusdict begin ') ($ i)) 'tray end') <nil>))))))))))))
compile: (if (paren (! (~ ($# DUPLEX) (words <nil> 0)))) (brace (; (switch (paren (words <nil> ($ DUPLEX))) (brace (; (simple (arglist case 0)) (; (DUPLEX=false <nil>) (; (simple (arglist case 1)) (DUPLEX=true <nil>)))))) (PATCH=(^ (^ (^ (^ (^ ($ PATCH) '
%%BeginFeature: *Set DuplexMode
[{ systemdict /languagelevel known {languagelevel 1 gt product (HP LaserJet 4Si) ne and} if {
    << /Duplex ') ($ DUPLEX)) '  >> setpagedevice
  } {statusdict /setduplexmode known {statusdict begin ') ($ DUPLEX)) ' setduplexmode end} if} ifelse
 } stopped cleartomark
%%EndFeature') <nil>))))
compile: (if (paren (&& (! (~ ($# LAND) (words <nil> 0))) (~ ($ LAND) (words <nil> 1)))) (LAND='-tlandscape' <nil>))
compile: (if (paren (~ ($ LPCLASS) (words <nil> *reverse*))) (brace (switch (paren (words <nil> ($ REVERSE))) (brace (; (simple (arglist case '')) (; (REVFLAG=1 <nil>) (; (simple (arglist case 1)) (REVFLAG='' <nil>))))))))
compile: (switch (paren (words <nil> ($ LPCLASS))) (brace (; (simple (arglist case *post100*)) (; (DPI='-Z -D100' <nil>) (; (simple (arglist case *600dpi*)) (; (DPI='-Z -D600' <nil>) (; (simple (arglist case *1200dpi*)) (; (DPI='-Z -D1200' <nil>) (; (simple (arglist case *)) (DPI='' <nil>))))))))))
compile: (if (paren (! (~ ($ COPIES) (words (words <nil> '') -c*)))) (COPIES=(^ -c ($ COPIES)) <nil>))
compile: (if (paren (! (~ ($ OLIST) (words (words <nil> '') (^ '=' *))))) (OLIST=(` (brace (| (| (simple (arglist echo ($ OLIST))) (simple (arglist sed 's/-o/=/')) (simple (arglist sed 's/-/:/g')))) <nil>))
compile: (switch (paren (words <nil> ($ REVFLAG))) (brace (; (simple (arglist case 1)) (; (simple (arglist echo ($ PATCH))) (; (switch (paren (words <nil> ($ OLIST))) (brace (; (simple (arglist case '')) (; (simple (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist eval dvips) -q) -f) ($ DPI)) -r) ($ LAND)) ($ COPIES)) ($ 1))) (; (simple (arglist case *)) (; (DVIFILE=(^ (^ /tmp/dv ($ pid)) .dvi) <nil>) (; (>($ DVIFILE) (simple (arglist (arglist (arglist (arglist dviselect -s) ($ OLIST)) ($ 1)) <nil>))) (; (simple (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist eval dvips) -q) -f) ($ DPI)) -r) ($ LAND)) ($ COPIES)) ($ DVIFILE))) (simple (arglist (arglist rm -f) ($ DVIFILE))))))))))) (; (</dev/null (simple (arglist (^ ($ LPLIB) /process/hpost) <nil>))) (; (simple (arglist case '')) (; (</dev/null (simple (arglist (^ ($ LPLIB) /process/hpost) <nil>))) (; (simple (arglist echo ($ PATCH))) (switch (paren (words <nil> ($ OLIST))) (brace (; (simple (arglist case '')) (; (simple (arglist (arglist (arglist (arglist (arglist (arglist (arglist eval dvips) -q) -f) ($ DPI)) ($ LAND)) ($ COPIES)) ($ 1))) (; (simple (arglist case *)) (; (DVIFILE=(^ (^ /tmp/dv ($ pid)) .dvi) <nil>) (; (>($ DVIFILE) (simple (arglist (arglist (arglist (arglist dviselect -s) ($ OLIST)) ($ 1)) <nil>))) (; (simple (arglist (arglist (arglist (arglist (arglist (arglist (arglist eval dvips) -q) -f) ($ DPI)) ($ LAND)) ($ COPIES)) ($ DVIFILE))) (simple (arglist (arglist rm -f) ($ DVIFILE))))))))))))))))))))
compile: (simple exit)
compile: (simple (arglist exit ($ status)))
