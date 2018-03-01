`cpuminer-koto` is a fork of `cpuminer-opt` by Jay D Dee, which itself is a
fork of `cpuminer-multi` by TPruvot with a list of optimizations added on top of
it. The optimizations have been imported from other miners developped by lucas
Jones, djm34, Wolf0, pooler, Jeff garzik, ig0tik3d, elmad, palmd, and Optiminer,
while Jay D Dee performed even further optimizations.
Jerônimo Cryptão performed benchmarks and extracted relevant functionality,
that is required for Koto mining, while pruning the remaining bits of the client
in order for the resulting miner to be as light as possible.


All of the code is believed to be open and free. If anyone has a claim to any of
it, please, post your case on the corresponding Bitcoin Talk forum [https://bitcointalk.org/index.php?topic=1326803.0](thread) or
contact the author via [email](mailto://crypto.jeronimo@gmail.com).


See file RELEASE_NOTES for change log and compile instructions.

Requirements
------------

1. An x86_64 architecture CPU with a minimum of SSE2 support. This includes
Intel Core2 and newer and AMD equivalents. In order to take advantage of AES_NI
optimizations a CPU with AES_NI is required. This includes Intel Westbridge
and newer and AMD equivalents. Further optimizations are available on some
algoritms for CPUs with AVX and AVX2, Sandybridge and Haswell respectively.

Older CPUs are supported by cpuminer-multi by TPruvot but at reduced
performance.

ARM CPUs are *not* supported.

2. A 64-bit Linux OS. Ubuntu- and Fedora-based distributions, including Mint and
CentOS are known to work and have all dependencies in their repositories.
Others may work but may require more effort.
64 bit Windows OS is supported with mingw_w64 and msys or pre-built binaries.

MacOS, OSx is not supported.

3. A Stratum pool.

Errata
------

AMD CPUs older than Piledriver, including Athlon x2 and Phenom II x4, are not
supported by `cpuminer-koto` due to an incompatible implementation of SSE2 on
these CPUs. Some algos may crash the miner with an invalid instruction.
Users are recommended to use an unoptimized miner such as cpuminer-multi.

Bugs
----

Users are encouraged to post their bug reports in the [Issues](https://github.com/crypto-jeronimo/cpuminer-koto/issues) section.

All problem reports must be accompanied by a proper definition.
This should include how the problem occurred, the command line and
output from the miner showing the startup and any errors.

Donations
---------

`cpuminer-koto` has no fees, but if you're feeling generous, any donations are warmly welcome:

 KOTO: k1GHJkvxLQocac94MFBbKAsdUvNbFdFWUyE

 BTC: 1HKWV5t4KGUwybVHNUaaY9TXFSoBvoaSiP

 ETH: 0xF17e490B391E17BE2D14BFfaA831ab8966d2e689

 LTC: LNSEJzT8byYasZGd4f9c3DgtMbmexnXHdy

 BCH: 1AVXvPBrNdhTdwBN5VQT5LSHa7sEzMSia4

Happy mining!
