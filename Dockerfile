### STAGE 1: Build ###
FROM node as build

WORKDIR /usr/src/app

COPY . .

RUN npm install

ENV NODE_ENV=production

RUN npm run generate

### STAGE 2: NGINX ###
FROM nginx

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /usr/src/app/dist /usr/share/nginx/html

ENV NGINX_ENTRYPOINT_QUIET_LOGS=1

CMD [ "nginx", "-g", "daemon off;" ]