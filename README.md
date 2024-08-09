## Nginx http_dav_module 

# Build the http_dav_module

Instructions used to build module - https://nivethan.dev/devlog/nginx-and-webdav-extended.html

Detailed steps are in build-module.txt

# Build the container

docker build -t nginx-webserver .

# Run the container

docker run -v $(pwd)/nginx-startup.conf:/etc/nginx/nginx.conf -p 8080:8080 nginx-webserver

