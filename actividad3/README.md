# Actividad 3

Para la creacion del servicio se hicieron los siguientes pasos

- Primero se creo un archivo llamado soactividad.service dentro de la carpeta "/etc/systemd/system" con el contenido para la definicion del Unit descrito en el archivo [soactividad.service](https://github.com/rodrigo-rodas-126/so1_actividades_201906053/blob/main/actividad3/soactividad.service) donde se describe el tipo de servicio, descripcion, servicios que deben levantar antes, y directivas de reinicio del servicio.

- Con ello tambien se genero un archivo script en la carpeta "/usr/local/bin/" [soactividad.service](https://github.com/rodrigo-rodas-126/so1_actividades_201906053/blob/main/actividad3/soactividad.service) en el cual dentro de un while se imprimen dos mensajes con una pausa de 1 segundo.

- Con los archivos listos se le dieron los permisos correspondientes a cada uno

        sudo chmod 744 /usr/local/bin/enable_touchpad.sh

        sudo chmod 644 /etc/systemd/system/touchpad_enabler.service

- Para leventar el servicio en el arranque del sistema ejecuto el siguiente comando

        sudo systemctl enable soactividad

- Y para empezar la ejecucion del servicio se levanto con el siguiente comando:

        sudo systemctl start soactividad

- Con el comando "systemctl status ..." se pueden visualizar algunos logs pero para acceder a ellos utilizamos journactl con los siguientes comandos:

        # Para visualizar todos los logs del servicio

        journalctl -u soactividad


        # Para mayor facilidad y ver los ultimos 10 logs 
        # y seguir visualizandolos en tiempo real
        
        journalctl -u soactividad -n 10 -f
