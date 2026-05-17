[Indice](../indice.md) > Git Add


# Git add

## Que hace?
Agrega los archivos creados que no esten en el .gitignore al Stage Area

Puede agregar/actualizar de a un archivo o usar . o * para agregar/actualizar todos los archivos.

## Parametros

### -v o --verbose
Durante la ejecución del add proporciona informacion detallada de lo que esta haciendo el comando add

### -n o --dry-run
Simula el proceso de agregado en el Stage Area.

## Ejemplos
Agrega un archivo al stage:

```bash
jack@oneill:~$ cd repositorio/proyecto
jack@oneill:~$ git add documentos.txt
```