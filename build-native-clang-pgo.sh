#!/usr/bin/env bash
set -e

cd /s/src

mingw32-make clean
mingw32-make -j profile-build ARCH=native COMP=clang
strip stockfish.exe
mv -f stockfish.exe stockfish-windows-native-clang-pgo.exe

./stockfish-windows-native-clang-pgo.exe bench

echo
echo "Arena engine path:"
echo "C:\\Users\\ric0016\\OneDrive - Templestowe College\\Desktop\\Documents\\GitHub\\Stockfish\\src\\stockfish-windows-native-clang-pgo.exe"
