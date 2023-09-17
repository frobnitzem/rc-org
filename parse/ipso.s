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
compile: (name=secstore <nil>)
compile: (get=secstoreget <nil>)
compile: (put=secstoreput <nil>)
compile: (edit=no <nil>)
compile: (load=no <nil>)
compile: (flush=no <nil>)
compile: <nil>
compile: (fn (words <nil> secstoreget) (brace (<_password (simple (arglist (arglist (arglist (arglist secstore -i) -g) ($ 1)) <nil>)))))
compile: <nil>
compile: (fn (words <nil> secstoreput) (brace (<_password (simple (arglist (arglist (arglist (arglist secstore -i) -p) ($ 1)) <nil>)))))
compile: <nil>
compile: (fn (words <nil> aesget) (brace (; (if (paren (! (~ ($ 1) (words <nil> /*)))) (brace (; (>[1=2] (simple (arglist (arglist (arglist (arglist (arglist (arglist (arglist echo <nil>) ipso:) aescbc) requires) fully) qualified) pathname))) (simple (arglist exit usage))))) (<($ 1) (>(` (brace (simple (arglist basename ($ 1))))) (<[3]_password (simple (arglist (arglist (arglist (arglist (arglist aescbc -i) -d) <nil>) <nil>) <nil>))))))))
compile: <nil>
compile: (fn (words <nil> aesput) (brace (>($ 1) (<(` (brace (simple (arglist basename ($ 1))))) (<[3]_password (simple (arglist (arglist (arglist (arglist (arglist aescbc -i) -e) <nil>) <nil>) <nil>)))))))
compile: <nil>
compile: (fn (words <nil> editedfiles) (brace (; (if (paren (~ ($ get) (words <nil> aesget))) (brace (for i (words <nil> ($ files)) (if (paren (| (| (simple (arglist ls -tr)) (simple (arglist sed '1,/^_timestamp$/d')) (simple (arglist (arglist grep -s) (^ (^ '^' (` (brace (simple (arglist basename ($ i)))))) '$')))) (simple (arglist echo ($ i))))))) (if not (| (simple (arglist ls -tr)) (simple (arglist sed '1,/^_timestamp$/d'))))))
compile: <nil>
compile: (while (paren (~ ($ 1) (words <nil> -*))) (brace (; (switch (paren (words <nil> ($ 1))) (brace (; (simple (arglist case -a)) (; (name=aescbc <nil>) (; (get=aesget <nil>) (; (put=aesput <nil>) (; (simple (arglist case -f)) (; (flush=yes <nil>) (; (simple (arglist case -e)) (; (edit=yes <nil>) (; (simple (arglist case -l)) (; (load=yes <nil>) (; (simple (arglist case *)) (; (>[2=1] (simple (arglist (arglist echo <nil>) 'usage: ipso [-a -f -e -l] [-s] [file ...]'))) (simple (arglist exit usage)))))))))))))))) (simple shift))))
compile: <nil>
compile: (if (paren (&& (&& (~ ($ flush) (words <nil> no)) (~ ($ edit) (words <nil> no))) (~ ($ load) (words <nil> no)))) (brace (; (edit=yes <nil>) (if (paren (~ factotum (words <nil> ($ *)))) (brace (; (load=yes <nil>) (flush=yes <nil>)))))))
compile: <nil>
compile: (if (paren (&& (&& (~ ($ flush) (words <nil> yes)) (~ ($ edit) (words <nil> no))) (~ ($ load) (words <nil> no)))) (brace (; (simple (arglist (arglist (arglist echo flushing) old) keys)) (; (| (simple (arglist echo delkey)) (simple (arglist (arglist 9p write) factotum/ctl)) (simple (arglist exit 0))))))
compile: <nil>
compile: (if (paren (&& (~ ($ get) (words <nil> aesget)) (~ ($# *) (words <nil> 0)))) (brace (; (>[2=1] (simple (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist (arglist echo <nil>) ipso:) must) specify) a) fully) qualified) file) name) for) aescbc) '(-a)'))) (simple (arglist exit usage)))))
compile: <nil>
compile: (user=(` (brace (simple whoami))) <nil>)
compile: (|| (simple (arglist cd /tmp)) (simple (arglist exit ($ status))))
compile: (tmp=(` (brace (| (| (simple df) (simple (arglist (arglist grep -v) /lib/init)) (simple (arglist awk '$1=="tmpfs" {print $NF}')))) <nil>)
compile: (if (paren (! (~ ($# tmp) (words <nil> 0)))) (|| (simple (arglist cd ($sub tmp (words <nil> 1)))) (simple (arglist exit ($ status)))))
compile: (simple (arglist (arglist mkdir -p) (^ ipso. ($ user))))
compile: (|| (simple (arglist (arglist chmod 700) (^ ipso. ($ user)))) (simple (arglist exit ($ status))))
compile: (simple (arglist cd (^ ipso. ($ user))))
compile: (dir=(` (brace (simple pwd))) <nil>)
compile: (dir=($" dir) <nil>)
compile: <nil>
compile: (fn (words <nil> sigexit) (brace (simple (arglist (arglist rm -rf) ($ dir)))))
compile: <nil>
compile: (if (paren (~ ($ edit) (words <nil> yes))) (simple (arglist echo (^ (^ (^ (^ '
	Warning: The editor will display the secret contents of
	your ' ($ name)) ' files in the clear, and they will
	be stored temporarily in ') ($ dir)) '
	in the clear, along with your password.
'))))
compile: <nil>
compile: <nil>
compile: (>_password (simple (arglist (arglist (arglist readcons -s) (^ ($ name) ' password')) <nil>)))
compile: <nil>
compile: <nil>
compile: (if (paren (~ ($# *) (words <nil> 0))) (brace (; (if (paren (! (<_password (>_listing (simple (arglist (arglist (arglist (arglist (arglist secstore -G) .) -i) <nil>) <nil>)))))) (brace (; (simple (arglist echo 'secstore read failed - bad password?')) (; (simple (arglist sleep 2)) (simple (arglist exit password)))))) (files=(` (brace (simple (arglist (arglist sed 's/[ 	]+.*//') _listing)))) <nil>))))
compile: (if not (files=($ *) <nil>))
compile: <nil>
compile: <nil>
compile: (for i (words <nil> ($ files)) (brace (if (paren (! (simple (arglist ($ get) ($ i))))) (brace (; (simple (arglist (arglist echo ($ name)) ' read failed - bad password?')) (; (simple (arglist sleep 2)) (simple (arglist exit password))))))))
compile: (; (simple (arglist sleep 2)) (>_timestamp (simple (arglist date <nil>))))
compile: <nil>
compile: <nil>
compile: (if (paren (~ ($ edit) (words <nil> yes))) (brace (; (simple (arglist B (` (brace (for i (words <nil> ($ files)) (simple (arglist basename ($ i)))))))) (>/dev/null (simple (arglist (arglist readcons 'type enter when finished editing') <nil>))))))
compile: (if (paren (~ ($ flush) (words <nil> yes))) (brace (; (simple (arglist (arglist (arglist echo flushing) old) keys)) (| (simple (arglist echo delkey)) (simple (arglist (arglist 9p write) factotum/ctl)))))
compile: (if (paren (~ ($ load) (words <nil> yes))) (brace (; (simple (arglist (arglist (arglist echo loading) factotum) keys)) (if (paren (~ factotum (words <nil> ($ files)))) (| (simple (arglist cat factotum)) (simple (arglist (arglist (arglist 9p write) -l) factotum/ctl))))))
compile: <nil>
compile: <nil>
compile: (for i (words <nil> (` (brace (simple editedfiles)))) (brace (; (prompt=(^ (^ 'copy ''' (` (brace (simple (arglist basename ($ i)))))) ''' back? [y/n/x]') <nil>) (switch (paren (words <nil> (` (brace (simple (arglist readcons ($ prompt))))))) (brace (; (simple (arglist case [yY]*)) (; (if (paren (! (simple (arglist ($ put) ($ i))))) (brace (; (simple (arglist (arglist echo ($ name)) ' read failed - bad password?')) (; (simple (arglist sleep 2)) (simple (arglist exit password)))))) (; (simple (arglist (arglist (arglist (arglist echo (^ (^ '''' ($ i)) '''')) copied) to) ($ name))) (; (if (paren (&& (~ ($ i) (words <nil> factotum)) (! (~ ($ load) (words <nil> yes))))) (brace (| (simple (arglist cat ($ i))) (simple (arglist (arglist (arglist 9p write) -l) factotum/ctl)))) (; (simple (arglist case [xXqQ]*)) (; (simple exit) (; (simple (arglist (arglist case [nN]*) *)) (simple (arglist (arglist echo (^ (^ '''' ($ i)) '''')) skipped))))))))))))))
compile: <nil>
compile: (simple (arglist exit ''))
compile: (simple (arglist exit ($ status)))
