[Indice](../indice.md) > Git Commit

Git Commit

Qué hace?
Registra los cambios en el repositorio creando un nuevo commit. Cada commit guarda una instantánea del proyecto junto con una descripción, autor y fecha.

Parámetros

-m <mensaje> o --message=<mensaje>
Permite especificar el mensaje del commit desde la linea de comandos. 

--amend
Permite modificar el commit más reciente para agregar cambios o corregir el mensaje. 

-a o --all
Agrega al commit todos los archivos que hayan sido modificados o eliminados (no incluye archivos nuevos, esos deben agregarse con git add).

--no-verify
Omite la ejecución de los hooks pre-commit y commit-msg

--allow-empty 
Permite crear un commit aún cuando no haya cambios, sirve para registrar puntos en el historial sin tener que modificar archivos. 

--dry-run
Simula la ejecución del commit, mostrando qué archivos serían incluídos, pero sin crear efectivamente el commit. 

--date=<fecha>
Permite establecer la fecha del commit sobreescribiendo la del sistema

--author=<autor>
Permite especificar el autor del commit sobreescribiendo el que esté configurado en Git.

Ejemplos

Agregar todos los archivos modificados y crear un commit con mensaje:

jack@oneill:~$ git add .
jack@oneill:~$ git commit -m "feat: agrega formulario de login"

Corregir el mensaje del último commit:

jack@oneill:~$ git commit --amend -m "feat: agrega formulario de login con validación"

Crear un commit incluyendo automáticamente todos los archivos rastreados con cambios:

jack@oneill:~$ git commit -a -m "fix: corrige validacion en login"