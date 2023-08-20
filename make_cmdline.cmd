:<<BATCH
:;# Universal Batch Build Command Script
:;# DO NOT CHANGE CRLF LINE ENDI
:;# Runs on Windows via cmd.exe
:;# Runs on Linux/Unix via sh
    @echo off
    swipl -g "working_directory(_, 'prolog/parser'), [fit_to_plp], halt."
    swipl -g "[runape]."
BATCH
#! /usr/bin/env sh
prolog=swipl

$prolog -O -F none -g "working_directory(_, 'prolog/parser'), [fit_to_plp], halt." -t halt ; $prolog -O -f runape.pl -g "qsave_program('ape.cmd', [stand_alone(true)])." -t halt
