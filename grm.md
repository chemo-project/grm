# grm 1 "26 may 2020"

## NAME
grm \- Git Repository Manager

## SYNOPSIS
grm [*COMMAND* [*ARGS*...]]

## DESCRIPTION
*grm* is a tool to help you keep your git repositorys in order.
It is heavily inspierd by go-langs old build systeml, where packages
are stored according to to there remote adresses.
https\://www.github.com/user/repo.git -> $RepositryDirectory/github.com/user/repo

## COMMANDS

#### help
displays a short-help text and exits

#### version
displays the program version, copyright and license information and exists

#### pick
sends all repositrys paths to dmenu

#### clone <URL>
clones directory of given url to respective path

#### delete
sends all repositrys paths to dmenu,
and deletes selected repoistry.

#### query
querys $RepositryDirectory for repositorys,
useful when repoistiorys are manualy clone or deleted

#### configure
will create or bring up user configiuration file in $EDITOR or nano

## BUGS
No know bugs, except spelling error.
Pull request with spelling corections are more the welcome at
www.github.com/chemo-project/grm

## NOTES
Global configuration can be done by setting envierment variables under the settings
section of the src code.<br>
User configureation file(s) will be read from or created at eather
$XDG_CONFIG_HOME/grm/settings.sh or $HOME/.config/grm/settings.sh

## TIP
alias "cd $(grm pick)", to display a list of all repoistorys and bring you there.
example\: 'alias repo="cd $(grm pick)"'

## COPYRIGHT
MIT License, Copyright (C) 2020 chemo-project.

## AUTHOR
Written by Czaplicki (github.com/Czaplicki).
