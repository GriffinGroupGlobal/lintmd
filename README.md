# Description

This is a g3 development utility for running a linter against all markdown files mounted to the image. The is the
current [linter][markdownlinter] and these are the [rules][markdownrules] that may be implemented.

# Usage

When calling via docker you must:
- mount a volume
  - this volume may have a src directory where md files can be found
  - this volume may have a test directory where md file can be found
  - these two directories are where the linter will look for md files
- specify a working dir which must be the volume you mounted
- example:

```bash
docker run --rm -v /Users/mattjenks/Development/Hydrogen/gplib_provingground:/mj --workdir /mj g3dev/lintmd:latest
```

# Docker

Find the latest docker image [here][docker].

[markdownlinter]:https://www.npmjs.com/package/markdownlint-cli
[markdownrules]:https://github.com/DavidAnson/markdownlint/blob/master/doc/Rules.md
[node]:https://hub.docker.com/_/node/
[docker]:https://hub.docker.com/r/g3dev/lintmd/
