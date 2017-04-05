FROM crystallang/crystal
MAINTAINER devel@olbat.net

RUN apt-get update && apt-get install -y \
  build-essential \
  llvm-3.5-dev \
  libclang-3.5-dev \
  git \
  libicu-dev \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*


RUN mkdir -p /src
WORKDIR /src
COPY Makefile shard.yml /src/
COPY src /src/src

RUN make && make install
CMD libgen
