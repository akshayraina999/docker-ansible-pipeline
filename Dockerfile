FROM ubuntu:focal
RUN apt-get update
RUN apt-get install nginx -y \
zip \
unzip
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip 
CMD ["nginx", "-g",  "daemon off;"]
EXPOSE 80
