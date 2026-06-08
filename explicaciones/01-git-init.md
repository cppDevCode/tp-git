[Indice](../indice.md) > Git Init


# Git init

## Que hace?
Inicializa un repositorio vacio de Git. En caso de que exista reinicializa uno existente.
En el proceso de inicialización se crea la carpeta .git dentro del repositorio local con los templates iniciales.

## Parametros

### -q o --quiet 
Durante la ejecución del init solo muestra los errores y advertencias. 

### --bare
Crea un repositorio Bare. Si la variable de entorno GIT_DIR no esta establecida, esta se setea con el directorio actual de trabajo.

### --object-format=<formato>
En la etiqueta <formato> se debe especificar el algoritmo hash usado en el repositorio. Las opciones validas son sha1 (Valor predeterminado) o sha256 (Debe activarse). 

### -b <nombre-brazo> o --initial-branch <nombre-brazo>
En la etiqueta <nombre-brazo> se debe indicar la rama principal. En caso de no especificarse se tomara el valor por default (master), se debe tener en cuenta que las nuevas convenciones establecen que el termino master se encuentra deprecado y debe de utilizarse main en su lugar. 
El nombre de brazo principal por default puede ser cambiado en la variable de configuracion init.defaultBranch

## Ejemplos
Iniciar un nuevo repositorio para un directorio de trabajo existente:

```bash
jack@oneill:~$ cd repositorio/proyecto
jack@oneill:~$ git init
jack@oneill:~$ git add .
jack@oneill:~$ git commit 
```

