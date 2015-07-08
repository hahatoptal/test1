FROM    centos:7

# Enable EPEL for Node.js
RUN     yum install -y epel-release
# Install Node.js and npm
RUN     yum install -y npm

# App
ADD . /src
# Install app dependencies
RUN cd /src; npm install

EXPOSE  8080
CMD ["node", "/src/index.js"]
