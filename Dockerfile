#FROM node:latest AS build-env

#设置工作目录
#WORKDIR /usr/src/personal_blog/hexo_blog

#RUN npm i -g npm@7.5.2 \
#    && npm i hexo-cli -g \
#    && hexo init \
#    && hexo generate

FROM nginx:latest AS publish

#设置工作目录
WORKDIR /app

#COPY --from=publish /app /usr/src/personal_blog

#RUN apk add --no-cache bash
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]