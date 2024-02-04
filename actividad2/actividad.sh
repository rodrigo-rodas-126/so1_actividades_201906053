#!/bin/bash
# Exportamos las variables de entorno
export $(grep -v '^#' actividad.env | xargs)
# Obtenemos la fecha de ejecucion
executedate=$(date '+%Y%m%d')
directorio_logs="/tmp/$executedate"
archivo_log="$directorio_logs/saludos.log"
# Creamos el directorio de los logs
mkdir -p "$directorio_logs"
# Exportamos la variable GITHUB_USER y construimos la url
github_user=$GITHUB_USER
giturl="https://api.github.com/users/$github_user"
response=$(curl -s "$giturl")
#echo "$response"
# Con el reponse y con ayuda de jq lo procesamos como un JSON para extraer los datos
userid=$(echo "$response" | jq -r '.id')
createdate=$(echo "$response" | jq -r '.created_at')
#echo "$userid"
#echo "$createdate"
# Guardamos el log
echo "Hola $github_user. User ID: $userid. Cuenta fue creada el: $createdate." >> "$archivo_log"

# Creamos el cron tab para ejecutarlo cada 5 minutos
# crontab -e
# */5 * * * * /mnt/c/USAC/SOPES1/TAREAS/so1_actividades_201906053/actividad2/actividad.sh
