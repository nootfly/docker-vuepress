# Container to simplify building/serving a vuepress site

Default entrypoint just starts webhooks, listening for a call to localhost:9000/hooks/vuepress-webhook. This will clone/pull the $VUEPRESS_REPO env var into /root/src.

To serve the actual files, you can use the vuepress dev server with a changed ENTRYPOINT. 
