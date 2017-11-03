FROM crystallang/crystal
MAINTAINER devel@olbat.net

RUN apt-get update && apt-get install -y --no-install-recommends \
  build-essential \
  git \
  llvm-4.0-dev \
  libclang-4.0-dev \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

RUN update-alternatives --install /usr/bin/llvm-config llvm-config \
  $(llvm-config-4.0 --bindir)/llvm-config 1

RUN mkdir -p /src
WORKDIR /src
COPY Makefile shard.yml /src/
COPY src /src/src

RUN make && make install
CMD libgen
