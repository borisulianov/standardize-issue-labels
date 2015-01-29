#!/bin/bash 
echo -n "Especifique nombre del repositorio > "
read nombrerepo
echo -n "Escriba su nombre de usuario > "
read username
echo -n "Escriba su contraseña > "
read -s password
echo "Actualizando las etiquetas..."
#Primero creamos la única etiqueta adicional.
curl -k -u "$username:$password" -d "{\"name\":\"trabajo requerido\",\"color\":\"006b75\"}" https://api.github.com/repos/arielsbecker/$nombrerepo/labels
#Y renombramos las existentes...
#bug
curl -k -u "$username:$password" -X POST --data "{\"name\":\"error\",\"color\":\"fc2929\"}" https://api.github.com/repos/arielsbecker/$nombrerepo/labels/bug
#duplicate
curl -k -u "$username:$password" -X POST --data "{\"name\":\"duplicado\",\"color\":\"cccccc\"}" https://api.github.com/repos/arielsbecker/$nombrerepo/labels/duplicate
#enhancement
curl -k -u "$username:$password" -X POST --data "{\"name\":\"mejora\",\"color\":\"84b6eb\"}" https://api.github.com/repos/arielsbecker/$nombrerepo/labels/enhancement
#help wanted
curl -k -u "$username:$password" -X POST --data "{\"name\":\"ayuda solicitada\",\"color\":\"159818\"}" https://api.github.com/repos/arielsbecker/$nombrerepo/labels/help%20wanted
#invalid
curl -k -u "$username:$password" -X POST --data "{\"name\":\"inválido\",\"color\":\"e6e6e6\"}" https://api.github.com/repos/arielsbecker/$nombrerepo/labels/invalid
#question
curl -k -u "$username:$password" -X POST --data "{\"name\":\"pregunta\",\"color\":\"cc317c\"}" https://api.github.com/repos/arielsbecker/$nombrerepo/labels/question
#won't fix
curl -k -u "$username:$password" -X POST --data "{\"name\":\"no se solucionará\",\"color\":\"ffffff\"}" https://api.github.com/repos/arielsbecker/$nombrerepo/labels/wontfix
