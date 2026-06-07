# Estadisticas del Repositorio

| Estadistica | Integrante |  
|:-----------:|:----------:|  
| Mayor Commits| 4 Alejandro Baldres |
| Cantidad de Merges | 6 |
| Mayor cantidad de archivos modificados | 2 |


### Integrante con Mayor commits
*Importante:*
En caso de que sean iguales se quedara con la primer ocurrencia.

Comando Usado:
```bash
git log --no-merges --min-parents=1 --pretty=format:"%an" | sort | uniq -c | sort -r | head -1
```  

### Cantidad total de merges realizados  

Comando usado:
```bash
(git log --merges --oneline).Count
```

### Commit con la mayor cantidad de archivos modificados
Muestra el hash del commit con la cantidad de archivos modificados:

```bash
git log --oneline | ForEach-Object { $hash = ($_ -split ' ')[0]; $count = (git diff-tree --no-commit-id -r --name-only $hash).Count; [PSCustomObject]@{Hash=$hash; Count=$count} } | Sort-Object Count -Descending | Select-Object -First 1
```
Para ver el diff completo:

```bash
git show <hash>
```
Resumen de archivos modificados: 
```bash
git show --stat <hash>
```
## Cantidad de Conflictos Producidos
**Resultado:** 

Un conflicto ocurre cuando 2 ramas modificaron la misma parte de un archivo y Git, por sí solo, no puede resolverlo al hacer un merge o rebase.

*Aclaración: Debido a que Git no provee un comando para contar específicamente los conflictos ocurridos, el resultado de esta sección, es decir, la cantidad de conflictos encontrados, es registrado manualmente durante el desarrollo del trabajo.*


Para buscar menciones explícitas en los mensajes de commit:
```bash
git log --all --oneline | grep -i "conflict\|resolve"
```
## Cantidad de Ramas Existentes
**Resultado:**

Comando usado para listar todas las ramas, locales y remotas:

```bash
git branch -a
```

Comando usado para contar el total:
```bash
git branch -a | wc -l
```


## Captura de un conflicto previo a su resolución

**Conflicto detectado:** Al fusionar `origin/feature/estadísticas-JD` con `origin/feature/estadisticas-MB`
en el archivo `estadisticas.md`.

**Commits asociados:**
- `31499e8` (HEAD de `feature/estadísticas-JD`) — "*agrego cantidad de conflictos y de ramas*"
- `8f79d5c` (HEAD de `feature/estadisticas-MB`) — "*feat(estadisticas): se agregan estadisticas cant de merges y mayor modificacion de archivo*"

**Comandos utilizados para reproducir el conflicto:**

```bash
git checkout -b test origin/feature/estadísticas-JD
git merge --no-commit origin/feature/estadisticas-MB
```

Salida del merge:

```
Auto-fusionando estadisticas.md
CONFLICTO (contenido): Conflicto de fusión en estadisticas.md
Fusión automática falló; arregle los conflictos y luego realice un commit con el resultado.
```