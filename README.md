### Servidor FTP Basado en Debian 9


Permite montar un Servidor ftp en segundos con diferentes usuarios, cualquier consulta:

Christopher Naranjo Gonzalez <cnaranjo@nsoporte.com> 


##Volumenes:

- /conf :  Contiene los archivos de configuracion asi como las DB de usuarios
- /ftp:  Carpeta donde se almacenan los archivos
- /log:  Archivos Log del servidor 


##Scripts para manipular usuarios:

- /usr/bin/add_ftp_user:   Agrega un usuario FTP, el script solicita numero de usuario y password.
- /usr/bin/del_ftp_user:   Elimina un usuario FTP, primero muestra la lista de usuarios y solicita el nombre a borrar. 
- /usr/bin/list_ftp_users:  Muestra la lista de usuarios activos del FTP.


##Variables de Entorno:

- uid: ID de usuario 
- gid: GID para el grupo de usuario



Docker Hub:

https://hub.docker.com/r/nsoporte/ftpserver


