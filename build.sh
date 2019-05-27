docker build -t react-platform:builder -f Dockerfile.builder .
docker build -t react-platform:nginx -f Dockerfile.nginx .