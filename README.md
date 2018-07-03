# Container to simplify building/serving a vuepress site

Default entrypoint just starts webhooks, listening for a call to localhost:9000/hooks/vuepress-webhook. This will clone/pull the $VUEPRESS_REPO env var into /root/src.

To serve the actual files, point a static webserver at /root/src/.vuepress/html

Git push hook test.
