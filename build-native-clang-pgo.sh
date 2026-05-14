#!/usr/bin/env bash
set -e

cd /s/src

mingw32-make clean
mingw32-make -j build COMP=clang

./stockfish.exe bench

echo
echo "Arena engine path:"
echo "C:\\Users\\ric0016\\OneDrive - Templestowe College\\Desktop\\Documents\\GitHub\\Stockfish\\src\\stockfish.exe"
