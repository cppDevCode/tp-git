[Indice](../indice.md) > Git Revert

Git Revert

Qué hace?
Es el comando que permite deshacer cambios introducidos por commits anteriores. 
Esto lo hace creando un nuevo commit que sea opuesto al que se quiere revertir. Es una opción segura para repositorios compartidos porque no implica reescribir el historial.  

Parámetros

--no-edit
Permite realizar el revert sin abrir el editor para modificar el mensaje del commit.

-m 
Permite revertir un merge indicando qué rama principal conservar. 

--no-commit o -n
Permite aplicar los cambios inversos sin crear el commit automáticamente. 

--abort
Permite, en caso de conflictos, volver el repositorio al estado anterior al comando.

Ejemplos

Revierte un commit específico:

jack@oneill:~$ cd repositorio/proyecto  
  
jack@oneill:~$ git revert a1b2c3d

Revierte el último commit realizado:

jack@oneill:~$ git revert HEAD