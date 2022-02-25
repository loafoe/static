FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y

# Override default site which listens om ipv6 as well
COPY default /etc/nginx/sites-available/default

COPY site/ /var/www/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
