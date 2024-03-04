#!/bin/bash

mkfifo participante1
mkfifo participante2

echo "Primer participante: P1"
echo "Segundo participante: P2"

while true
do
    read -p "Mensaje del P1: " primer_mensaje
    echo "$primer_mensaje" > ./mensajes_participante1

    message_recibido_1=$(cat /tmp/mensajes_participante1)
    echo "Mensaje Recibido de P1 $message_recibido_1"


    read -p "Mensaje del P2: " segundo_mensaje
    echo "$segundo_mensaje" > ./mensajes_participante2

    message_recibido_2=$(cat /tmp/mensajes_participante2)
    echo "Mensaje Recibido de P2 $message_recibido_2"
done