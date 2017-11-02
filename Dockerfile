FROM crystallang/crystal
MAINTAINER devel@olbat.net

RUN apt-get update && apt-get install -y \
  build-essential \
  llvm-3.8-dev \
  libclang-3.8-dev \
  git \
  libicu-dev \
  libgtk2.0-dev \
  libgtk-3-dev \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

RUN update-alternatives --install /usr/bin/llvm-config llvm-config \
  $(llvm-config-3.8 --bindir)/llvm-config 1

RUN mkdir -p /src
WORKDIR /src
COPY Makefile shard.yml /src/
COPY src /src/src

RUN make && make install
CMD libgen
