# Use a base Ubuntu image
FROM ubuntu:latest

# Update the package repository and install httpd
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

# Start httpd in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
