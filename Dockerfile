FROM  cgr.dev/chainguard/nginx:latest-dev
#FROM nginx
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY ngx_http_dav_ext_module.so /var/lib/nginx/modules/.

USER root

RUN apk update && apk add libxml2-dev libxslt-dev --no-cache --update-cache 

USER nginx



