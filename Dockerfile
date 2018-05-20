FROM node:latest

WORKDIR root
RUN yarn global add vuepress
RUN curl -sL https://github.com/adnanh/webhook/releases/download/2.6.6/webhook-linux-amd64.tar.gz | tar -xvz; \
  mv webhook-linux-amd64/webhook /usr/local/bin/webhook; rmdir webhook-linux-amd64
COPY vuepress-webhook.sh /usr/local/bin
COPY hooks.json hooks.json

EXPOSE 9000
ENTRYPOINT ["webhook", "-verbose"]
