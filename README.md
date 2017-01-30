## An extension implementing Go style concurrency into ableC

This is based on the skeleton extension found at
https://github.com/melt-umn/edu.umn.cs.melt.exts.ableC.skeleton

This extension will allow for simple concurrency using a style similar to
go-routines in Googles Go language.  Data can be passed to and from these
concurrent routines by using channels.

An `artifact` and `examples` directories demonstrate how to create
an ableC compiler using the extension and some sample programs using
that extension.

The `modular_analyses` directory contains a directory for each of the
two modular analyses: modular determinism and modular
well-definedness.  A `run.sh` script is in each to make it easy for an
extension user to verify that the extension does in fact pass the
modular analyses.

A `src` directory contains the sourse of the langauge extension.

Extension designers are of course free to organize files as they
choose.  This is simply an example that works well for us.
