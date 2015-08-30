FROM node
WORKDIR /app
RUN apt-get update && apt-get install -y nginx
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

ADD default /etc/nginx/sites-enabled/
ADD package.json /app/
RUN npm install
ONBUILD ADD package.json /app/
ONBUILD RUN npm install

EXPOSE 80
CMD nginx
