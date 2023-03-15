FROM ubuntu
MAINTAINER dabaocd(dabaodc@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 82
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/djadjisambasow402/awsapp.git /var/www/html/

#ADD awsapp/ /var/www/html/
CMD ["nginx","-g","daemon off;"]
