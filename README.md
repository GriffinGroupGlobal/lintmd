# Description

This is a g3 development utility for running a linter against all markdown files mounted to the image. The is the
current [linter][markdownlinter] and these are the [rules][markdownrules] that may be implemented.

This is currently built off of the node [alpine image][node].

# Usage

The image expects a directory to be mounted at the /home/node/src location. It will search the entire directory
structure for *.md files and lint them against the rule set. For instance, to use the latest linter and rule set
against the current working directory (and its children)...

```bash
docker container run -v `pwd`:/home/node/src g3devdocker/lintmd:latest
```

# Docker

Find the latest docker image [here][docker].

[markdownlinter]:https://www.npmjs.com/package/markdownlint-cli
[markdownrules]:https://github.com/DavidAnson/markdownlint/blob/master/doc/Rules.md
[node]:https://hub.docker.com/_/node/
[docker]:https://hub.docker.com/r/g3devdocker/lintmd/
