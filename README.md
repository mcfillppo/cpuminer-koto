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

Usage
-----
```
Usage: cpuminer [OPTIONS]
Options:
  -o, --url=URL         URL of mining server
  -O, --userpass=U:P    username:password pair for mining server
  -u, --user=USERNAME   username for mining server
  -p, --pass=PASSWORD   password for mining server
      --cert=FILE       certificate for mining server using SSL
  -x, --proxy=[PROTOCOL://]HOST[:PORT]  connect through a proxy
  -t, --threads=N       number of miner threads (default: number of processors)
  -r, --retries=N       number of times to retry if a network call fails
                          (default: retry indefinitely)
  -R, --retry-pause=N   time to pause between retries, in seconds (default: 30)
      --time-limit=N    maximum time [s] to mine before exiting the program.
  -T, --timeout=N       timeout for long poll and stratum (default: 300 seconds)
  -s, --scantime=N      upper bound on time spent scanning current work when
                          long polling is unavailable, in seconds (default: 5)
      --randomize       Randomize scan range start to reduce duplicates
  -f, --diff-factor     Divide req. difficulty by this factor (std is 1.0)
  -m, --diff-multiplier Multiply difficulty by this factor (std is 1.0)
      --hide-diff       Do not display changes in difficulty
      --coinbase-addr=ADDR  payout address for solo mining
      --coinbase-sig=TEXT  data to insert in the coinbase when possible
      --no-longpoll     disable long polling support
      --no-getwork      disable getwork support
      --no-gbt          disable getblocktemplate support
      --no-stratum      disable X-Stratum support
      --no-extranonce   disable Stratum extranonce support
      --no-redirect     ignore requests to change the URL of the mining server
  -q, --quiet           disable per-thread hashmeter output
      --no-color        disable colored output
  -D, --debug           enable debug output
  -P, --protocol-dump   verbose dump of protocol-level activities
  -S, --syslog          use system log for output messages
  -B, --background      run the miner in the background
      --benchmark       run in offline benchmark mode
      --cputest         debug hashes from cpu algorithms
      --cpu-affinity    set process affinity to cpu core(s), mask 0x3 for cores 0 and 1
      --cpu-priority    set process priority (default: 0 idle, 2 normal to 5 highest)
  -b, --api-bind        IP/Port for the miner API (default: 127.0.0.1:4048)
      --api-remote      Allow remote control
      --max-temp=N      Only mine if cpu temp is less than specified value (linux)
      --max-rate=N[KMG] Only mine if net hashrate is less than specified value
      --max-diff=N      Only mine if net difficulty is less than specified value
  -c, --config=FILE     load a JSON-format configuration file
  -V, --version         display version information and exit
  -h, --help            display this help text and exit
```

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
