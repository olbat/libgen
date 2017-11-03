FROM olbat/libgen
MAINTAINER devel@olbat.net

RUN apt-get update && apt-get install -y --no-install-recommends \
  libicu-dev \
  libgtk2.0-dev \
  libgtk-3-dev \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*
