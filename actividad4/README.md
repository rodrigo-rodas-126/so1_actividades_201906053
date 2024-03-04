# Actividad 4

En principio el script genera dos archivos especiales fifo, que cualquier proceso puede leer y escribir sobre el.

    mkfifo mensajes_participante1 mensajes_participante2

El script crea un bucle infinito para leer y escribir mensajes simulando que dos procesos se estan comunicando entre si donde la entrada manual del usuario es el mensaje de un proceso, simulando esta comunicacion.

    echo "$primer_mensaje" > ./mensajes_participante1 &
    message_recibido_1=$(cat ./mensajes_participante1)
    echo "Mensaje Recibido de P1 $message_recibido_1"