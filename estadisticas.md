# Estadisticas del Repositorio

| Estadistica | Integrante |  
|:-----------:|:----------:|  
| Mayor Commits| 4 Alejandro Baldres |
| 


### Integrante con Mayor commits
*Importante:*
En caso de que sean iguales se quedara con la primer ocurrencia.

Comando Usado:
```bash
git log --no-merges --min-parents=1 --pretty=format:"%an" | sort | uniq -c | sort -r | head -1
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
