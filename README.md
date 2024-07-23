# swagger
Swagger UI and Editor

# Docker build 
```
cd ~/work-swagger/
git clone https://github.com/finfra/swagger
cd swagger

docker build --rm -t nowage/swagger:v1.0 .
```

# Start 
```
docker rm -f swagger-ui
docker run                              \
    -d                                  \
    --name swagger-ui                   \
    --hostname swagger-ui               \
    --network swagger-net               \
    -p 8080:8080                        \
    -e SWAGGER_JSON=/usr/share/nginx/html/json/swagger.json    \
    -e SWAGGER_JSON_URL=http://fg1:8080/json/swagger.json      \
    nowage/swagger:v1.0
sleep 1    
curl localhost:8080

```