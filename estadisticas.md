# Estadisticas del Repositorio

| Estadistica | Integrante |  
|:-----------:|:----------:|  
| Mayor Commits| 4 Alejandro Baldres |
| Cantidad de Merges | 6 |
| Mayor cantidad de archivos modificados | 2 |


### Integrante con Mayor commits
*Importante*
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

