# Multi-stage Dockerfile
This shows the process of a multi-stage Dockerfile, which is useful to separate the build and runtime environments into stages to create a lightweight image. Only necessary files are carried over to the final image.

## Steps to run:
Build image
```
docker build -t <image_name> .
```
Run container
```
docker run -p 3000:3000 <image_name>
```
The app can be accessed in a browser with http://localhost:3000
