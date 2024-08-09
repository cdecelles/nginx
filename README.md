## Nginx module build


# Build the container

docker build -t nginx-webserver .

# Run the container

docker run -v $(pwd)/nginx-startup.conf:/etc/nginx/nginx.conf -p 8080:8080 nginx-webserver

