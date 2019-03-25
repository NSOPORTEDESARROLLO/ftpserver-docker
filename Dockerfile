FROM		debian:stretch
MAINTAINER	cnaranjo@nsoporte.com




#Instalar FTP y actualizar paquetes
RUN			apt-get update; \
			apt-get -y upgrade; \
			apt-get -y install proftpd 



RUN			mkdir /conf; \
			mkdir /ftp; \
			mkdir /samples; \
			mkdir /log; \
			addgroup --system nsgroup --gid=10000; \
			adduser --system nsuser --uid=10000 --gid=10000



COPY		files/proftpd.conf /samples/
COPY		files/ns-start /usr/bin/
COPY		files/add_ftp_user /usr/bin/
COPY		files/del_ftp_user /usr/bin/
COPY		files/list_ftp_users /usr/bin/







RUN			chmod +x /usr/bin/ns-start; \
			chmod +x /usr/bin/add_ftp_user; \
			chmod +x /usr/bin/del_ftp_user; \
			chmod +x /usr/bin/list_ftp_users; \
			chown -R nsuser.nsgroup /ftp


EXPOSE      21


ENTRYPOINT  [ "/usr/bin/ns-start" ]




