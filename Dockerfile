FROM redis:6.0.5-alpine

# Add glibc package
COPY ./glibc-2.31-r0.apk /lib/

# Add glibc key
RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub

# Install glibc
RUN apk add /lib/glibc-2.31-r0.apk

# Set workdir
WORKDIR /root/cloudreve

ADD cloudreve ./cloudreve
ADD conf.ini ./conf.ini
ADD cloudreve.db ./cloudreve.db
ADD run.sh ./run.sh

RUN chmod +x ./cloudreve
RUN chmod +x ./run.sh

CMD ./run.sh