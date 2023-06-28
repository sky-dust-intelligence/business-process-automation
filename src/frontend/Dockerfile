FROM node:18.16.1-alpine as build
WORKDIR .
COPY package*.json .
COPY yarn.lock .
RUN yarn install
COPY . .
RUN yarn run build
FROM nginx:1.19
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY --from=build ./build /usr/share/nginx/html
