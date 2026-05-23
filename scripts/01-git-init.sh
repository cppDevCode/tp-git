#!bin/bash

echo "Bienvendido $USER!, a continuacion se creara la siguiente carpeta: ./ejemplo-git-init y se inicializara el repositorio"
echo "Desea continuar [s/N]?"

opcion="N"
read -n 1 -s opcion
if [ "${opcion^^}" == "S" ]; then
    echo "Creando Directorio..."
    mkdir ./ejemplo-git-init    
    echo "Creando el .git con brazo principal main..."
    cd ./ejemplo-git-init
    git init -b main    
    echo "Creando archivo ejemplo para primer commit..."
    touch ./primerArchivo.c    
    echo "Agregando archivos actuales al Stage Area..."
    git add .    
    echo "Registrando el primer commit de la historia..."
    git commit -am 'feat(ejemplo): Primer commit de la historia'
    echo "Genial ya puede ver que generamos la carpeta inicializada."
    echo "Pero que hicimos?:"
    echo "En primer lugar ejecutamos el git init para inicializar el repositorio git y crear la carpeta .git con los templates iniciales. Luego con git add. pasamos los archivos (si existen) al Stage Area y por ultimo registramos el primer commit de la historia."
    echo "Resumen de comandos GIT:"
    echo "git init -b main"
    echo "git add ."
    echo "git commit -am 'feat(ejemplo): Primer commit de la historia'"
else
    echo "Decidio no ejecutar los comandos del ejemplo."
fi
