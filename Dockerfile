FROM debian:stretch-slim

RUN apt-get update \
&& apt-get install -y curl build-essential \
&& curl -sL https://deb.nodesource.com/setup_12.x | bash - \
&& apt-get install -y nodejs

ENV JSFILE=app.js

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
