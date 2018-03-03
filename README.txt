This file is included in the Windows binary package. Compile instructions
for Linux and Windows can be found in RELEASE_NOTES.

cpuminer-koto is a console program that is executed from a DOS command prompt.
There is no GUI and no mouse support.

Choose the exe that best matches you CPU's features or use trial and
error to find the fastest one that doesn't crash. Pay attention to
the features listed at cpuminer startup to ensure you are mining at
optimum speed using all the available features.

Architecture names and compile options used are only provided for Intel
Core series. Pentium and Celeron often have fewer features.

AMD CPUs older than Piledriver, including Athlon x2 and Phenom II x4, are not
supported by cpuminer-koto due to an incompatible implementation of SSE2 on
these CPUs. In rare cases, the miner might crash with an invalid instruction.
As a workaround, users are recommended to use an unoptimized miner such as cpuminer-multi.

Exe name                Compile flags              Arch name

cpuminer-sse2.exe      "-march=core2"              Core2, Nehalem
cpuminer-aes-sse42.exe "-maes -msse4.2"            Westmere
cpuminer-aes-avx.exe   "-march=corei7-avx"         Sandybridge, Ivybridge
cpuminer-avx2.exe      "-march=core-avx2"          Haswell...
cpuminer-avx2-sha.exe  "-march=core-avx2 -msha"    Ryzen

If you have found this software more useful than other alternatives available,
please, feel free to donate:

KOTO: k1GHJkvxLQocac94MFBbKAsdUvNbFdFWUyE
BTC: 1HKWV5t4KGUwybVHNUaaY9TXFSoBvoaSiP
ETH: 0xF17e490B391E17BE2D14BFfaA831ab8966d2e689
LTC: LNSEJzT8byYasZGd4f9c3DgtMbmexnXHdy
BCH: 1AVXvPBrNdhTdwBN5VQT5LSHa7sEzMSia4

After all those morning cups of coffee need to come from somewhere, in order to
enable efficient code writing :)

Thanks!
