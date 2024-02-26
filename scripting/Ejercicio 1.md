Ejercicio 1. ¿Son los comandos umask y chmod comandos internos?
chmod no umask si
type chmod / umask
Ejercicio 2: Sea la siguiente lista de archivos: bd.class.php, header.inc.php, install.txt,
readme.txt, prueba, index.php, mail.class.php
• Muestra los nombres de archivo que terminan en .php.
ls *.php
• Muestra los nombres de archivo que tengan la letra e en segunda posición.
ls ?e*
• Muestra los nombres de archivo cuya primera letra esté comprendida entre a y e.
ls [a-e]*
• Muestra los nombres de archivo que no comienzan por una vocal.
ls [!aeiou]*
• Muestra los nombres de archivo que no terminan en .php.
ls *.!(php)
• Muestra los nombres de archivo que no terminan ni con .txt ni con .php.
ls *.!(txt|php)
Ejercicio 3. ¿Cómo se escriben los dos comandos siguientes en la misma línea?
• $ cd /tmp
• $ ls -l
cd /temp ; ls -l
Ejercicio 4. Lista todos los procesos del sistema y redirige el resultado a un archivo.
ps aux > procesos.txt
Ejercicio 5. Sea el comando who -A, que genera un mensaje de error:
• Ejecuta el comando redirigiendo los errores a un archivo.
who -A 2> INFO.TXT
• Ejecuta el comando haciendo desaparecer los errores, sin redirigir a un archivo en
disco.
who -A 2> /dev/null
Ejercicio 6. Ejecuta los comandos siguientes
• $ touch fic_existe
• $ chmod 600 fic_existe fic_noexiste
• Redirija el resultado del comando chmod a un archivo, los errores a otro.
• Redirija los resultados y los errores del comando a un mismo archivo.

Ejercicio 7. ¿Qué hace el comando siguiente?
• $ ls > resu -l
manda el resultado de un ls al archivo especificado con la opcion -l del commando
Ejercicio 8. Ejecuta los comandos date, who y ls y guarda el resultado de los tres comandos en un archivo (una sola línea de comando).
(date ; who ; ls) >> dwl.txt
Ejercicio 9. Ejecuta los comandos date y who -A y almacena el resultado de los dos comandos
en un archivo resu (una sola línea de comando). Recuerda: el comando who -A genera un
mensaje de error.
date > resu.txt ;  who -A 2>> resu.txt
Ejercicio 10. Muestra la lista de procesos paginando el resultado.
ps aux | more
Ejercicio 11. Combinando los comandos ps y grep, muestra la lista de los procesos httpd que
funcionan en el sistema.
ps aux | grep http
Ejercicio 12. Combinando los comandos tail y head, muestra la tercera línea del archivo
/etc/passwd.

Ejercicio 13. Ejecuta el siguiente comando
• $ touch f2 f1 fic1.txt FIC.c Fic.doc fIc.PDF fic
• Cuente el número de archivos cuyo nombre contenga la palabra fic. La búsqueda no
deberá discriminar entre mayúsculas y minúsculas. 
find -type f -iname "*fic*" | wc -l