FROM node:8-slim
LABEL authors="Patrick Yin <eetech@gmail.com>"

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils \
  && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
  && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list \
  && apt-get update -qqy \
  && apt-get -qqy install google-chrome-stable gnupg fontconfig fonts-noto ttf-freefont \
  && rm /etc/apt/sources.list.d/google-chrome.list \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/* \
  && npm install -g pm2
