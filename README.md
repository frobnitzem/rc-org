# RC Shell Tests

As explained in [Unifying the the RC shell](rc_history.md), there
is a fearsome need for a consistent set of tests for implementations
of the rc shell.

This project aims to track the compatibility of implementations
using a set of tests -- both for [parsing](parse) and [execution](tests).

## Basic Usage

One may test a given rc shell implementation using
the bundled scripts described below.  Note that you
must be in this repository's top-level directory
for all the paths to work correctly.

* parsing

    ./bin/test -s <path to rc exectable>

* execution

    ./bin/test <path to rc executable>


# More Information

All invocations of `rc` from inside these tests are run as

    $rc [other flags] -m ./bin/rcmain <script.rc>

This provides a standard initialization environment
for rc that prevents user-specific customizations
from interfering with the tests.

It is permissible to modify rcmain for a particular
implementation in order to run the tests in compatibility mode.
Any implementation-specific modifications that need
to do this must be documented.


## Parse Tests

Each rc file in the `parse` subdirectory (no .s suffix)
has been parsed into an abstract syntax tree and the result
printed as a list of s-expressions (one per line).
These have been stored in the corresponding reference output
file (with .s suffix).

If the rc shell being tested implements the `-D` flag
to print s-expressions, they are compared to the reference
parse outputs.  Note that the `-D` flag should not execute
the scripts, but only print the output s-expressions.
Therefore, running `test -s` should not execute any script
contents (but should follow source-links from `. <file>`).

Any mismatch will be printed.  This will also
halt the tests unless `test -s` is run with the `-a` flag.

New parse tests may be added by passing the `-m` flag
to `test -s`.  In the `-m` mode, each argument
of `test -s` and its s-expression parse output
is copied to the `parse` subdirectory.
For example, to add `9.rc` (and the corresponding `9.rc.s`)
into `parse/`, use

    ./bin/test -ms <path to rc exectable> /bin/9.rc


## Execution Tests

Each rc file in the `tests` subdirectory (no .d, .1, .2, or .x suffix)
is executed in a temporary directory (named `<prefix>/\`{basename $test}`.d).
The standard output, standard error, and final value of \$status
are captured in `<prefix>/\`{basename $test}.?` where `?` is 1, 2, or x,
respectively.  diff is run on all the results to compare them
to the corresponding reference outputs in the `tests/` subdirectory.

Any mismatch will be printed.  This will also
halt the tests unless `test` is run with the `-a` flag.

New tests may be added by passing the `-m` flag to `test`.
In the `-m` mode, each argument of `test` and its execution
outputs are copied to the `tests` subdirectory.
For example, to add `9.rc` (and the corresponding `9.rc.(d 1 2 x)`)
into `tests/`, use

    ./bin/test -m <path to rc exectable> /bin/9.rc

