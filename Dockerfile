FROM crystallang/crystal
MAINTAINER devel@olbat.net

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y \
  build-essential llvm-3.5-dev libclang-3.5-dev git libicu-dev

RUN mkdir /src
WORKDIR /src
COPY Makefile /src/
COPY shard.yml /src/
COPY src/ /src/src

RUN make && make install
CMD libgen
