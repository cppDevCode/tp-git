[Indice](../indice.md) > Merge y Rebase

# Git merge y Git rebase

## ¿Qué hacen?
Ambos comando sirven para integrar cambios de una rama a otra, pero lo hacen de maneras distintas.

**git merge** une dos ramas creando un nuevo commit de fusión que tiene dos "padres". Conserva el historial tal cual ocurrió, sin modificarlo.

**git rebase** toma los commit de una rama y los "reaplica" uno por uno sobre otra base. El resultado es un historial lineal, como si los cambios siempre hubieran partido de ese punto. 

## Git merge
### Parámetros
 git add explicaciones/03-merge-rebase.md
#### --no-ff
Fuerza la creación de un commit de merge aunque sea posible hacer un fest-foward. Es útil para dejar registro de que hubo una fusión.

```bash
git merge --no-ff feature/nueva-funcionalidad
```
#### --ff-only
Solo permite el merge si puede hacer por fast-foward, es decir, sin crear commit extra. Es útil para dejar registro explícito de que hubo una fusión.

```bash
git merge --ff-only feature/nueva-funcionalidad
```
#### --squash
Toma todos los commits de la rama a fusionar y los "aplasta" en uno solo, sin crear el commit de merge automáticamente. Requiere un `git commit` manual después.

```bash 
git merge --squash feature/nueva-funcionalidad
git commit -m "feat: integración de nueva funcionalidad"
```
#### --abort
Cancela un merge que quedó en conflicto y restaura el estado anterior al intento d fusión.

```bash
git merge --abort
```

## Git rebase

### Parámetros

#### -i o --interactive
Abre un editor para reorganizar, editar, combinar, eliminar commits antes de reaplicarlos. Es el modo más poderoso de rebase.

```bash
git rebase -i main
```

#### --onto \<nueva-base\>
Permite mover commits a una base distinta, útil cuando se quiere trasladar una rama que partió de otra rama intermedia.

```bash
git rebase --onto main feature/base/ feature/nueva
```

#### --abort
Cancela el rebase en curso y vuelve al estado anterior.

```bash
git rebase --abort
```

#### --continue
Una vez resueltos los conflictos durante un rebase, este comando le indica a Git que continúe con el siguiente commit.

```bash
git rebase --abort
```

#### --continue 
Una vez resueltos los conflictos durante un rebase, este comando le indica a Git que continúe con el siguiente commit.

```bash
git rebase --continue 
```

## Ejemplos
1. Fusionar una rama de feature en main (conservando el historial):

```bash
meryl@streep:~$ checkout main

meryl@streep:~$ git merge --no-ff feature/nueva-funcionalidad-MS
```

2. Actualizar una rama de feature con los últimos cambios de main antes de integrarla:
```bash
meryl@streep:~$  git checkout feat/actualización-MS
meryl@streep:~$  git rebase main
```

