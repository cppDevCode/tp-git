[Indice](../indice.md) > Git Log

# Git Log

## Qué hace?
Es el comando que permite ver el historial de commits del repositorio. 
Admite gran variedad de parámetros para filtrar, formatear y limitar la salida. En este trabajo se utilizó para crear la sección de Estadísticas. 

## Parámetros

### --oneline
Muestra cada commit abreviado en una sola línea. 

### -n <cantidad> o --max-count= <cantidad>
Limita la cantidad de commits que se muestran

### --all
Muestra la cantidad de commits de todas las ramas

### --author=<patrón>
Filtra los commits por autor. 

### --since=<fecha> y --until= <fecha>
Filtra los commits por un rango de fechas

### --no-merges
Excluye los commits de merge

### --format=<formato> o --pretty=<formato>
Permite personalizar el formato de salida

### --min-parents=<cantidad> y --max.parents=<cantidad>
Filtra commits según la cantidad de padres que tengan.

## Ejemplos
Ver el historial completo de la rama actual:

```bash
jack@oneill:~$ git log
```

Filtrar commits de un autor en las últimas dos semanas:

```bash
jack@oneill:~$ git log --author="Jack" --since="2 weeks ago"
```