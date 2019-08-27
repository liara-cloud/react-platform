docker build -t liararepo/react-platform:builder -f Dockerfile.builder .
docker build -t liararepo/react-platform:nginx -f Dockerfile.nginx .
