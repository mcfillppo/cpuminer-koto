#
# Dockerfile for cpuminer-koto
# usage: docker build -t cpuminer-koto:latest .
# run: docker run -it --rm cpuminer-koto:latest [ARGS]
# ex: docker run -it --rm cpuminer-koto:latest -o stratum+tcp://jp.kotopool.work:3333 -u k1GHJkvxLQocac94MFBbKAsdUvNbFdFWUyE.worker1 -p x -t 4
#

# Build
FROM ubuntu:16.04 as builder

RUN apt-get update \
  && apt-get install -y \
    build-essential \
    libssl-dev \
    libgmp-dev \
    libcurl4-openssl-dev \
    libjansson-dev \
    automake \
  && rm -rf /var/lib/apt/lists/*

COPY . /app/
RUN cd /app/ && ./build.sh

# App
FROM ubuntu:16.04

RUN apt-get update \
  && apt-get install -y \
    libcurl3 \
    libjansson4 \
  && rm -rf /var/lib/apt/lists/*

COPY --from=builder /app/cpuminer .
ENTRYPOINT ["./cpuminer"]
CMD ["-h"]
