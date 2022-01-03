path=C:\Msys64\mingw64\bin;C:\msys64\msys\msys\1.0\bin;C:\Msys64\bin;

title Compiling 64bit
make profile-build ARCH=x86-64 COMP=mingw
strip stockfish.exe
ren stockfish.exe Bosschess64bit.exe

title Compiling 32bit
make profile-build ARCH=x86-32 COMP=mingw
strip stockfish.exe
ren stockfish.exe Bosschess32bit.exe

title Compiling CPU-modern
make profile-build ARCH=x86-64-modern COMP=mingw
strip stockfish.exe
ren stockfish.exe Bosschess-modern.exe

title Compiling CPU-bmi2
make profile-build ARCH=x86-64-bmi2 COMP=mingw
strip stockfish.exe
ren stockfish.exe Bosschess-BMI2.exe

title Compiling CPU-avx2
make profile-build ARCH=x86-64-avx2 COMP=mingw
strip stockfish.exe
ren stockfish.exe Bosschess-AVX2.exe

title Compile Successfully
pause
exit