FROM daocloud.io/node:6_5_0
MAINTAINER atlatl333@126.com

# node run port
ENV PORT 6000

# copy local project to docker
COPY . /app

# set docker dir app folder is work folder
WORKDIR /app

# install npm package
RUN npm install --registry=https://registry.npm.taobao.org

EXPOSE 6000

CMD ["sh", "start"]
