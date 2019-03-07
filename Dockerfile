FROM node:11.4.0

ARG ssh_prv_key
ARG ssh_pub_key
ARG git_server

# Authorize SSH Host
RUN mkdir -p /root/.ssh && \
    chmod 0700 /root/.ssh && \
    ssh-keyscan $git_server > /root/.ssh/known_hosts

# Add the keys and set permissions
RUN echo "$ssh_prv_key" > /root/.ssh/id_rsa && \
    echo "$ssh_pub_key" > /root/.ssh/id_rsa.pub && \
    chmod 600 /root/.ssh/id_rsa && \
    chmod 600 /root/.ssh/id_rsa.pub

WORKDIR root
RUN yarn global add vuepress@0.14.8
RUN curl -sL https://github.com/adnanh/webhook/releases/download/2.6.8/webhook-linux-amd64.tar.gz | tar -xvz; \
  mv webhook-linux-amd64/webhook /usr/local/bin/webhook; rmdir webhook-linux-amd64
COPY vuepress-webhook.sh /usr/local/bin
COPY hooks.json hooks.json

EXPOSE 9000
ENTRYPOINT ["webhook", "-verbose"]
