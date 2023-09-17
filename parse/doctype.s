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
compile: (troff=troff <nil>)
compile: (eqn=eqn <nil>)
compile: (prefer=prefer <nil>)
compile: (opt='' <nil>)
compile: (dev='' <nil>)
compile: (while (paren (~ ($ 1) (words <nil> -*))) (brace (; (switch (paren (words <nil> ($ 1))) (brace (; (simple (arglist case -n)) (; (troff=nroff <nil>) (; (eqn=neqn <nil>) (; (prefer='prefer -n' <nil>) (; (simple (arglist case -T)) (; (dev=($ 1) <nil>) (; (simple (arglist case -*)) (opt=(^ ($ opt) ' $1') <nil>)))))))))) (simple shift))))
compile: (ifs='
' (brace (files=(` (brace (simple (arglist echo ($ *))))) <nil>)))
compile: (| (| (simple (arglist (arglist (arglist grep -h) '\$LIST|\|reference|^\.(EQ|TS|\[|PS|IS|GS|G1|GD|PP|BM|LP|BP|PI|cstart|begin|TH...)|^\.P$') ($ *))) (simple (arglist sort -u)) (simple (arglist awk (^ (^ (^ (^ (^ (^ (^ (^ (^ (^ (^ (^ (^ (^ '
BEGIN	{ files = "' ($ files)) '" }
/\$LIST/ { e++ }
/^\.PP/	{ ms++ }
/^\.LP/	{ ms++ }
/^\.EQ/	{ eqn++ }
/^\.TS/	{ tbl++ }
/^\.PS/	{ pic++ }
/^\.IS/	{ ideal++ }
/^\.GS/ { tped++ }
/^\.G1/ { grap++; pic++ }
/^\.GD/ { dag++; pic++ }
/^\.\[/	{ refer++ }
/\|reference/ { prefer++ }
/^\.cstart/ { chem++; pic++ }
/^\.begin +dformat/ { dformat++; pic++ }
/^\.TH.../ { man++ }
/^\.BM/ { lbits++ }
/^\.P$/	{ mm++ }
/^\.BP/	{ pictures++ }
/^\.PI/	{ pictures++ }
END {
	x = ""
	if (refer) {
		if (e)	x = "refer -e " files " | "
		else	x =  "refer " files "| "
		files = ""
	}
	else if (prefer) { x = "cat " files "| ') ($ prefer)) '| "; files = "" }
	if (tped)  { x = x "tped " files " | "; files = "" }
	if (dag)  { x = x "dag " files " | "; files = "" }
	if (ideal) { x = x "ideal -q " files " | "; files = "" }
	if (grap)  { x = x "grap " files " | "; files = "" }
	if (chem)  { x = x "chem " files " | "; files = "" }
	if (dformat)  { x = x "dformat " files " | "; files = "" }
	if (pic)   { x = x "pic " files " | "; files = "" }
	if (tbl)   { x = x "tbl " files " | "; files = "" }
	if (eqn)   { x = x "') ($ eqn)) ' ') ($ dev)) ' " files " | "; files = "" }
	x = x "') ($ troff)) ' "
	if (man) x = x "-man"
	else if (ms) x = x "-ms"
	else if (mm) x = x "-mm"
	if (lbits) x = x "-mbits"
	if (pictures) x = x " -mpictures"
	x = x " ') ($ opt)) ' ') ($ dev)) ' " files
	print x
}')))
compile: (simple (arglist exit ($ status)))
