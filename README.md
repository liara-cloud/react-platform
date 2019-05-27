# Liara React Platform
The docker image for React projects. (Created with create-react-app)

This image extends Liara Static Platform. Liara Static Platfrom uses nginx to serve static content. If you create a `liara_nginx.conf` in your project's root, Liara will use it to configure your nginx instance.

## Default liara_nginx.conf
```
location / {
  index index.html index.htm;
  try_files $uri $uri/ /index.html =404;
}
```

You can extend it to add your own config:
```
location / {
  # ...
}

location /api {
  # ...
}

location /images {
  # ...
}
```

## Usage with Liara CLI
```sh
cd projects/my-react-app
liara deploy --platform=react
```

## Usage with Docker
Create a `Dockerfile` in your project's root directory:
```
FROM liararepo/react-platform:builder as builder
FROM liararepo/react-platform:nginx
```

Then build the image:
```sh
docker build -t my-react-app .
```

Now you can run your app with:
```sh
docker run -d -p 8000:80 my-react-app
```

Open up http://localhost:8000 in your browser.