# use a node base image
FROM node:7-onbuild

# set maintainer
LABEL maintainer "hoangnh272000@gmail.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8001 || exit 1 
# Mỗi 5s nó sẽ kiểm tra xem mọi thứ hoạt động có đúng không trên port 8001

# tell docker what port to expose
EXPOSE 8001