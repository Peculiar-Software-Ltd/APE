:<<BATCH
:;# Universal Batch Build Command Script
:;# DO NOT CHANGE CRLF LINE ENDI
:;# Runs on Windows via cmd.exe
:;# Runs on Linux/Unix via sh
    @echo off
    del ape.exe
    swipl -O -F none -g "working_directory(_, 'prolog/parser'), [fit_to_plp], halt." -t halt & swipl -O -f ape.pl -g "qsave_program('ape.exe', [goal(ape), toplevel(halt), stand_alone(true)])." -t halt
    if exist ape.exe goto success
    echo Could not find the SWI Prolog command.
    echo Make sure that the location of the SWI Prolog binaries is in the PATH variable.
    goto end
:success
    echo ape.exe created.
:end
BATCH
#! /usr/bin/env sh
swipl -O -F none -g "working_directory(_, 'prolog/parser'), [fit_to_plp], halt." -t halt ; swipl -O -f ape.pl -g "qsave_program('ape.exe', [goal(ape), toplevel(halt), stand_alone(true)])." -t halt
exit $?
