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
compile: (simple (arglist cd /scratch/rsc/plan9))
compile: (simple (arglist (arglist cvs up) -dAP))
compile: (; (simple (arglist cd dist)) (>filelist (simple (arglist ./mkfilelist <nil>))))
compile: (simple (arglist (arglist cp filelist) /usr/local/plan9port/dist))
compile: (simple (arglist cd /usr/local/plan9port/dist/debian))
compile: <nil>
compile: (simple (arglist (arglist (arglist rm -rf) dists) pool))
compile: (simple (arglist (arglist (arglist mkdir -p) dists) pool))
compile: (simple (arglist ./mkpkg all))
compile: (simple (arglist mkdir other))
compile: (simple (arglist (arglist cp other/*.deb) pool))
compile: (d=dists/testing/main/binary-i386 <nil>)
compile: (simple (arglist (arglist mkdir -p) ($ d)))
compile: (| (| (simple (arglist (arglist apt-ftparchive packages) pool)) (simple (arglist tee (^ ($ d) /Packages))) (>(^ ($ d) /Packages.gz) (simple (arglist gzip <nil>)))
compile: (simple (arglist (arglist cp Release.testing) (^ ($ d) /Release)))
compile: (>dists/testing/Release (brace (; (simple (arglist cat Release.top)) (simple (arglist (arglist apt-ftparchive release) dists/testing)))))
compile: (simple (arglist (arglist (arglist (arglist (arglist echo rsync) -r) dists) pool) swtch.com:www/swtch.com/debian))
compile: (simple (arglist exit ($ status)))
