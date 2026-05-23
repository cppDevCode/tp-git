#!bin/bash

directorio="./ejemplo-git-add"
archivo="./gitAdd.txt"
echo "Bienvendido $USER!, a continuacion se creara la siguiente carpeta: ${directorio} y se agregara al stage area 1 archivo creado"
echo "Desea continuar [s/N]?"

opcion="N"
read -n 1 -s opcion
if [ "${opcion^^}" == "S" ]; then
    echo "Creando Directorio..."
    mkdir ${directorio}
    echo "Creando el .git con brazo principal main..."
    cd ${directorio}
    git init -b main    
    echo "Creando archivo ejemplo para primer commit..."
    touch ${archivo}
    echo "Verificando que no este en el Stage Area"
    git status -s    
    echo "Agregando archivo gitAdd.txt al Stage Area..."
    git add ${archivo}    
    echo "Verificando que este en el Stage Area"  
    git status -s  
    echo "Genial ya tenemos el archivo en el Stage Area."
    echo "Pero que hicimos?:"
    echo "Dentro de un repositorio de git valido creamos un archivo ${archivo}, verificamos que no este en el Stage Area y luego ejecutamos git add ${archivo} y verificamos que este en el Stage Area"
    echo "Resumen de comandos GIT:"
    echo "git add ${archivo}"    
else
    echo "Decidio no ejecutar los comandos del ejemplo."
fi