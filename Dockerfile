FROM alpine
RUN apk add bash
RUN apk add openssh

WORKDIR /home

RUN mkdir .ssh
# usr(rwx)  grp(rwx) oth(rwx)
RUN chmod 700 .ssh
#RUN ssh-keygen -t rsa -f .ssh/id_rsa -q -N ""

COPY img-alpineb/.ssh /home/.ssh

# scp -P 33001 /home/.ssh/id_rsa.pub gsamec@fipmrdf.ddns.net:/home/gsamec/.ssh/hdonato_id_rsa.pub
# cat hdonato_id_rsa.pub >> ./authorized_keys
