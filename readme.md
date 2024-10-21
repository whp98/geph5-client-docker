# 迷雾通命令行客户端for Docker

https://github.com/geph-official/geph5

https://crates.io/crates/geph5-client


https://hub.docker.com/repository/docker/whp98/geph5-client/general

https://hackmd.io/@RVd35hG7TziAIk-XA24QLA/r1XjIdbWA

## docker-compose

```yaml
services:
  geph4-client:
    image: whp98/geph5-client
    container_name: geph5-client
    restart: unless-stopped
    ports:
      #socks5代理端口
      - "59909:9999"
      #http代理端口
      - "59910:19999"
    # 修改成你的配置文件
    # volumes:
    #   - ./config.yaml:/root/config.yaml
    logging:
      driver: local
      options:
        max-size: "10m"
```
## docker run

```shell
docker run -d \
  --name geph5-client \
  --restart unless-stopped \
  -p 59909:9999 \
  -p 59910:19999 \
  --log-driver local \
  --log-opt max-size=10m \
  whp98/geph5-client
```

添加配置文件
```
-v ./config.yaml:/root/config.yaml
```