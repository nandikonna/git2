# Use the official ubuntu image as the bash image
FROM ubuntu

# update the package list and install Apache2
RUN apt-get update -y && \

# copy the index.html file to the Apache root directory
COPY index.html /var/www/html/

# start the Apache2 sevice in the foreground
CMD ["/usr/sbin/apachectl", "-D", FOREGROUND"]
