FROM alpine
RUN apk update
RUN apk add \
    bash \
    openssh \
    git \
    curl

RUN adduser -S hdonato
#RUN useradd -ms /bin/bash hdonato
WORKDIR /home/hdonato
RUN echo 'hdonato:hdonato' | chpasswd

USER hdonato

RUN mkdir .ssh
# usr(rwx)  grp(rwx) oth(rwx)
RUN chmod 700 .ssh

# ejecutar una linea o la otra, son excluyentes
# ----------------------------------------------
#RUN ssh-keygen -t rsa -f .ssh/id_rsa -q -N ""
COPY img-alpineb/.ssh /home/hdonato/.ssh
# ----------------------------------------------

# ssh-copy-id -p 33001 hdonato@fipmrdf.ddns.net
