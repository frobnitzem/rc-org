---
title: Unifying the the RC shell
author: David M. Rogers
abstract: |
    Hearken me mayties, there lies the wreck of the shell, arrgh-sea (RC).
    Many a swashbucking penguin has happened across her bow and spied
    what much simpler and more serene syntax she hides compared
    to other \*sh-shells -- and that with more secure
    parse/evaluation semantics to boot.
    Aye, it be true that scripts once rewrote from bash to RC
    trim their sails and lose the barnacles from their underbellies.
    Alas, the parsing errors what plagued Tom Duff's first work
    caused the shell to cast adrift, as many pirates looked to their own
    and tinkered with syntax until the branches diverged.
    Fix the syntax, and you'll find there's nary any branches
    what use readline -- making them fearsome spiteful to use.
    Herein ye'll find the travels of the major forks of rc
    since its christening in 1989.  The queen's share of hacking
    over time was done just to track with operating systems.
    But there's also gems to behold as some new features
    gleam to life on the way.
    In these pages, ye'll also find a map 'o what's to be done
    to put all the sails to the same wind.
    Then new additions can find their way down to
    all the branches alike.  One key to pursue is using the plan9port's
    checkparse.  Last, I'll set down a code so we can test the
    mettle of any shell what claims to be RC.
---

<!--
    As a shell, rc has a large potential benefit to the Unix/Linux community. 
    Compared to other *sh-like shells, it has both a much simpler
    and more consistent parser, and more secure parse/evaluation semantics.
    To wit, scripts adapted from bash to rc are often considerably
    more concise, and easier to read.
    However, the parsing errors that were present in the original
    implementation have cause significant divergence in the
    syntax permitted by different branches.
    In addition, practical usability issues (readline integration
    and tab-completion) prevent *most*, but not all, of the rc
    instantiations from being practical for regular use.
    I give a brief history of the major forks of the plan9 shell, rc,
    since its original version in 1989.
    The great majority of changes to the code-base over time
    come from OS compatibility updates (tied to OS system API changes).
    I summarize work needed to align rc forks so that future code
    changes can be quickly adapted across all versions.  I also
    demonstrate the use of the plan9port parser validation strategy
    and give recommendations for verifying shell implementations.
-->

```
1989 1992  2003    2006  2011 2015      2018        2021
    ----v ^--+-------------+----|
             l        ``````\_____,-- 9front ----------------
              \               
               `-- plan9port (p9p) ------+--------- * -------
                     \                    \
                      `--- 9base ------|   `-- rcalone ------
 
        --- Byron's rc (rcb) --------------------------------
```

# Origins

First, the origin story.  Tom Duff wrote the original rc for plan9 in 1989.
plan9port's rc history begins with a commit from Russ Cox in 2003.
An independent re-implementation or rc for Unix
(which should properly be called sorcb) was written by Byron Rakitzis
in 1992.  To avoid confusion with rc, this version should properly
be named differently, like say `rcb`.
9base branched off of plan9port in November 2005.
The 9front fork of plan9 began its git version history in 2011,
but originates from historical the plan9 OS sources.
The fourth project "rcalone" was adapted from plan9port
in 2018 to allow it to compile as a stand-alone project.

Neither of the first three projects compile in a stand-alone way.
As parts of a larger distribution of plan9 capabilities, they
depend on various components of the plan9 distribution source code
(mainly the ubiquitous `u.h`).

Asking git whatchanged LICENSE to plan9port recounts the good news that
on March 23, 2021, Nokia transferred the copyrights in the Plan 9 software
to the Plan 9 Foundation, which relicensed them under the MIT license.


## Source Data

Source data for this history was gathered from 5 locations:

* [plan9port](https://github.com/9fans/plan9port) aka. p9p
  - 72 commits 2003-2023
  - `src/cmd/rc/` subdirectory
  - port of plan9 project to user space (including 9p command which allows fs overlay)
  - Authors: Russ Cox, Michael Teichgräber
  - Contributors: `wkj`, Xi Wang, Ray Lai, Ori Bernstein, Neven Sajko, Kare Nuorteva, Dan Cross

* [9base](https://git.suckless.org/9base) 
  - 12 commits 2005-2017
  - `rc/` subdirectory
  - early port of plan9 project to user space
  - Authors:  Anselm R. Garbe
  - Contributors: `pranomostro`

* [9front](http://git.9front.org/plan9front/plan9front/86b470d877870dd1c48f57d98586b48278cd9b5c/sys/src/cmd/rc/f.html)
  - 49 commits 2011-2023
  - `sys/src/cmd/rc/` subdirectory
  - infamous "go away cat" with frequently questioned answers
  - Authors: Cinap Lenrek, Ori Bernstein, Taru Karttunen, Igor Böhm
  - Contributors: Stanley Lieber, Michael Forney

* [rcalone](https://github.com/benavento/rc) 
  - 21 commits 2019-2023
  - main directory
  - stand-alone rc shell
  - readline support
  - Authors: Federico G. Benavento, David M. Rogers, Michael Forney

* [Byron's rc](https://github.com/rakitzis/rc)
  - a controversial reimplementation of rc with 'else' instead of 'if-not'
  - incorporated into many package managers
  - Authors: Toby Goodwin, Bert Münnich, `tim <tim>`, Byron Rakitzis, Dražen Borković
  - Contributors: Jakub Wilk, Garret Noble, Ross Lonstein, Olivier Duclos, Michael Reed, Avindra Goolcharan

For the first two, the [git-filter-repo](https://github.com/newren/git-filter-repo)
tool was used to pare the revision history down to *just* the changes
to the relevant directory (containing rc).

    % python3 ../git-filter-repo.py --subdirectory-filter rc/ --tag-rename '':'rc-'

Authors were determined using

    % git log | grep Author: | sort | uniq -c | sort -rk 1,1

and then manually clearing duplicates.

The [Appendix] compares 9base to the plan9port source version at the
point where 9base was initially forked.
The 9base version seems to have stopped development around 2017.

Looking at the size of diffs between rcalone's first commit
and plan9port's history shows that stand-alone rc branched
off of plan9port in 2018.
There was not much development in plan9port during that year, so
the base seems to have been commit b1743480a7dedd579f568b06957356689c64491e,
from September, 2017.
The diff from this initial fork is important, since it provides a list
of changes needed to "break off" rc from the authoritative source (plan9port)
to make stand-alone versions at will.  It is included in an [Appendix].

# Current Status

Currently, plan9port seems to hold the most actively maintained
copy of rc (by Russ Cox).  Even 9base's updates to rc seem mostly to have
been to incorporate changes added there.

However, 9front has much work that has not been merged into p9p.
A series of regression tests should be run against both
to ensure that all that work is reflected in accumulated
fixes.

In addition, comparing the current development branches of stand-alone rc
and plan9port's, probably the biggest feature missing from
plan9port's rc is command-editing and history.
It's very difficult to get used to plan9port's rc when one keeps
hitting the up arrow and getting control-characters instead
of command-history.

## Significant Changes

A list of significant changes to both the plan9port and
stand-alone rc are summarized below.

* 2004 - p9p:d62d03 stores child pid so that notifyf notifies
       child processes

* 2008 - p9p: Erik Quanstrom contributed changes to the subscript
       handling, so that expressions like \$x(2-) would work.

* 2016 - 9front:584719b implement 9atoms ` split {command} syntax extension
       where the command result will be split into a list.

* 2018 - 9front:a4d91a shell responds to cdpath

* 2018 - 9front:19dce8 fix \$"* (?) not concatenating list as it should

* 2019 - 9front:0322a2 fix fd redirection on rfork F 

* 2019 - p9p: Neven Sajko fixed declarations of the globals
       declared extern and shared between different source files of rc.

* 2019 - rcalone:38e5ee,41568e linux build fixes

* 2020 - p9p:152e3b major parser update to address the inability
       of rc to deal with '=' or '(' inside commands

       This added tests for the parse output, as well as
       noted several interesting corner cases for parsing.

       The next 4 commits build on this to create a recursive
       descent parser that clears up free carets after `{},
       sets a model for parentheses, and handles = within commands.

* 2020 - 9front:
        155e9c removed undefined behavior with multi-heredocs
        a0c4ca fixed incorrect store/print of `fn foo{cat < <{echo hi}}`
        f70d5e get \$apid right for `a=1 cat /dev/pid &;echo $apid`
        b80dca print lines for errors
        f8547e fix line count issue with `. cmd`
        61fb4b invalid free in codefree

* 2021 - 9front:c38619 fix leaking `runq->cmdfile`

* 2021 - 9front:db721a fix heredocs, added a -q flag to the `.` command
       Untangle lexer and interpreter thread state. More integration with
       9front's io library.
       - quote here-doc substitutions fixed in c9324c
       - pipe-after here-doc syntax fixed in 35f92e

* 2021 - rcalone:553b68 fix declarations of the globals
       declared extern and shared between different source files of rc.
       (apparently a re-do of the p9p 2019 update)

* 2022 - 9front:1e5eeb made shell portable to UNIX

* 2022 - 9front:1fb9e6 end of a series of glob-related fixes (starting in
       2016's b804b9) that specially marks arguments containing globs

* 2022 - 9front:08bd6b `flag f` clears status on success
       Note: this points to a wider issue regarding missing
       documentation of what changes \$status and how.

* 2023 - rcalone:de101c2-069cfd a series of commits fixed the
       syntax parsing by amending the yacc grammar. Free
       carats were also given to command-arguments of the form `word=`

* 2023 - rcalone:220279 handled `$missing ^ word` case (where missing is undefined)


9base only made 12 commits changing rc.  During development, 9base
and p9p tracked changes made in the others' codebase.  For example,
Anselm R Garbe added fixes in 2009 that tracked updates in p9p.

Indeed, the last update of 9base in 2017 was to apply changes from p9p
to havefork, in order to fix trouble with receiving sigint while running
a subshell.

Similarly, stand-alone rc has 21 commits between its fork
in 2018 and Feb., 2023.
Michael Forney made some contributions to build
compatibility, like adding `-D_XOPEN_SOURCE=500` to CFLAGS
and using `NAME_MAX` instead of MAXNAMLEN (posix compatibility),
and adding `-Wno-implicit-fallthrough` to default warning flags.
David Rogers made major changes to the syn.y file, making
the grammar more yacc-like (less reliance on operator precedence),
while allowing `=` in commands and fixing `$undefined_variable^(a b)`.

The parallel change permitting `=` in plan9port
chose to re-implement the parser as a hand-written recursive descent.
This is the strategy commonly employed in major languages,
and often results in efficiency gains over auto-generated yacc parsers.
[(Zimmerman, 2022)](https://arxiv.org/pdf/2209.08383.pdf)

The 9front branch has seen active development (49 commits
up to Oct., 2022), especially in the areas of here-docs,
globs, and the behavior of fork.  It contains
many behavior and bug-fixes that are not found elsewhere.


## Feature Summary

The following table summarizes which "features" are missing
from each shell.  The first, the presence of `if not`
is a major portability hurdle, since the original shell,
and every implementation, contains highly-used feature
except the Byron version.

|            | p9p   | 9front | rcalone | Byron |
| ---------- | ----- | ------ | ------- | ----- |
| if not     |       |        |         | no    |
| Linux      |       |        |         |       |
| history    | no    | no     |         |       |
| yacc       | no    |        |         |       |
| ls x=      |       | no     |         |       |
| `` `{}/x ``|       | no     | no      |  no   |
| return     | no    | no     | no      |       |

Fixes specifically needed for compiling on Unix/Linux
are listed are present in all the versions above.
Practical use on most terminals requires some sort of
line editing and command history capability.  These
are indicated in the next row.
Yacc refers to whether the parser is generated from
a formal grammar (e.g. using a tool like yacc).
Note that all versions of the rc use a custom lexer.

The ability of the shell to handle command-arguments
containing the = sign is shown on the next row.
Shells failing this will throw `syntax error` on
`ls x=`.
As originally written, rc would throw a syntax error on `ls x=`.
The row `` `{}/x `` notes whether expressions like `` `{pwd}/x `` parse
as a single word.
Finally, `return` refers to a shell builtin for `return`
in functions/scripts and `break`/`continue`
inside loop bodies.  These were not in the original shell,
but would make useful keyword additions.


## Outlook and Recommendations

Rc provides unique shell programming capabilities and is
arguably simpler and cleaner than bash in syntax.
The basic rc execution semantics has not changed over 34 years,
while steady development has made the shell both portable and
robust.

The biggest issue for writing scripts is syntax compatilibility between
implemementations.  Several changes to the syntax have occurred over
time, mostly due to unexpected quirks in the original parser -- like not
accepting `=` within command-arguments, or lack of free carats
(inserting spaces between tokens that were not there in the text
input).  As a consequence, all three major derivatives of the original
plan9 rc have subsequently fixed the lex/parse issues.
Plan9port switched to a hand-written recursive descent parser.
Plan9front and rcalone updated their yacc syntax.
Byron's shell has made its own syntactic choices, which make it
incompatible with the rc shell at present.

It is recommended that:

1. All rc implementations begin using a standard set of parser tests.

2. All rc implementations begin using a standard set of run-time tests
   to catch errors and non-uniformities in execution semantics.

3. Additional documentation be drafted for the $status variable.

4. A central mapping project post news about major bugfixes and
   compatibility issues so that they may be adopted across implementations.
   This project can also keep track of minor differences between versions
   -- like which rc invokation flags are supported by each.

5. Future additions and changes to rc syntax be discussed by
   drafting proposals and opening them to comments.
   Rc should further have a defined invocation (e.g. rc --parseopt)
   which will query or set which parser implementations are operational.


# Appendix

## Comparing plan9port and 9base at the genesis of 9base

    % @{cd 9base && git checkout c56461a2bfeb94fa485add72358add19b360c1ba && git log}

    commit c56461a2bfeb94fa485add72358add19b360c1ba
    Author: garbeam@wmii.de <unknown>
    Date:   Sun Nov 20 18:27:27 2005 +0200

        initial import

    % @{cd plan9port && git checkout 6a40d3a814702562c8cf5aad4e57df58ec6d8bdb && git log}

    commit 6a40d3a814702562c8cf5aad4e57df58ec6d8bdb
    Author: rsc <devnull@localhost>
    Date:   Thu Aug 11 16:44:43 2005 +0000

        Add rfork builtin.

    ...

    commit 78e5fd121718e565423a13509d411510d90b19d9
    Author: rsc <devnull@localhost>
    Date:   Sun Nov 23 18:04:08 2003 +0000

        Plan 9's rc.
        
        not a clear win over byron's,
        but at least it has the right syntax.

    $ diff plan9port/ 9base/

    Only in plan9port/: .cvsignore
    Common subdirectories: plan9port/.git and 9base/.git
    Only in 9base/: Makefile
    diff plan9port/exec.c 9base/exec.c
    117,119d116
    <   /* needed for rcmain later */
    <   putenv("PLAN9", unsharp("#9"));
    < 
    164a162
    >     return 0;
    Only in plan9port/: mkfile
    diff plan9port/plan9ish.c 9base/plan9ish.c
    30c30,32
    <   return unsharp("#9/rcmain");
    ---
    >     static char Rcmain[] = PREFIX"/lib/rcmain";
    >     char *rcmain = getenv("RCMAIN");
    >     return rcmain ? rcmain : Rcmain;
    Only in 9base/: rc.1
    diff plan9port/rc.h 9base/rc.h
    29c29
    < #include "x.tab.h"
    ---
    > #include "y.tab.h"
    Only in 9base/: rcmain

## Changes for adapting rc-standalone

Here is the diff adapting plan9port to create a stand-alone rc version,
gathered from the initial commit of rcalone.

I omit accidentally included text files that were lated deleted
during a clean up step.
The major differences come from adding multiple prompts, history.c,
removing the `#define Plan9` statements, and rewriting plan9ish and
unixcrap to plan9 and unix.

     Only in rc/: LICENSE
     Only in rc/: Make.Darwin
     Only in rc/: Make.Linux
     Only in rc/: Makefile
     diff -b plan9port/exec.c rc/exec.c
     139,141d138
     < 	/* needed for rcmain later */
     < 	putenv("PLAN9", unsharp("#9"));
     < 
     150c147
     < 	rcmain = flag['m'] ? flag['m'][0] : Rcmain();
     ---
     > 	rcmain = flag['m'] ? flag['m'][0] : Rcmain;
     161a159
     > 	memset(bootstrap, 0, sizeof bootstrap);
     Only in plan9port/: fmtquote.c
     diff -b plan9port/fns.h rc/fns.h
     67a68
     > int octal(char*);
     diff -b plan9port/havefork.c rc/havefork.c
     0a1
     > #ifdef Plan9
     1a3
     > #endif
     diff -b plan9port/haventfork.c rc/haventfork.c
     17c17
     < 	argv = malloc((count(p)+6)*sizeof(char*));
     ---
     > 	argv = emalloc((count(p)+6)*sizeof(char*));
     193c193
     < 		if(nc<sizeof(file)){
     ---
     > 		if(nc < sizeof file - 1){	/* 1 for / */
     diff -b plan9port/lex.c rc/lex.c
     89,105d88
     < pprompt(void)
     < {
     < 	var *prompt;
     < 	if(runq->iflag){
     < 		pstr(err, promptstr);
     < 		flush(err);
     < 		prompt = vlook("prompt");
     < 		if(prompt->val && prompt->val->next)
     < 			promptstr = prompt->val->next->word;
     < 		else
     < 			promptstr="\t";
     < 	}
     < 	runq->lineno++;
     < 	doprompt = 0;
     < }
     < 
     < void
     diff -b plan9port/rc.h rc/rc.h
     8d7
     < #define	Plan9
     18,24c17,18
     < #endif
     < #ifdef	V9
     < #include <signal.h>
     < #include <libc.h>
     < #endif
     < #ifdef Sun
     < #include <signal.h>
     ---
     > #else
     > #include "unix.h"
     98c92
     < char *emalloc(long);
     ---
     > void *emalloc(long);
     100c94
     < void efree(char*);
     ---
     > void efree(void*);
     138c132
     < extern char *Rcmain(), Fdprefix[];
     ---
     > char *Rcmain, *Fdprefix;
     diff -b plan9port/subr.c rc/subr.c
     6c6
     < char*
     ---
     > void*
     18c18
     < efree(char *p)
     ---
     > efree(void *p)
     Only in rc/: history.c
     Only in rc/: plan9.c
     Only in plan9port/: plan9ish.c
     Only in rc/: prompt-null.c
     Only in rc/: prompt-readline.c
     Only in rc/: rc.1
     Only in rc/: rcmain.unix
     Only in rc/: unix.c
     Only in rc/: unix.h
     Only in plan9port/: unixcrap.c
     Only in rc/: win32.c

