# Minimal `.ini` parser in CHICKEN Scheme

This is a test I do in any programming language I learn:
How does one implement a minimal `.ini` configuration file parser?

I define the target [`.ini`](https://en.wikipedia.org/wiki/INI_file) subset as:

* No sections
* No comments
* Every value is an unquoted string

(CHICKEN) Scheme is pretty impressive, especially if one considers that the 15
lines of code include 7 lines for a `string-trim` function which is not provided
in the [included modules](http://wiki.call-cc.org/man/5/Included%20modules).
