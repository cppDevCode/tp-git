[Indice](../indice.md) > Git Status

# Git status

## ¿Qué hace? 
Muestra el estado actual del área de trabajo y del área de staging. Permite saber qué archivos fueron modificados, cuáles están preparados para el próximo commit y cuáles no están siendo restreados por Git todavía.
Es uno de los comandos más usados en el día a día ya que suele ser ejecutado antes de cualquier `git add` o `git commit` para tener claro qué se va a incluir.

## Parámetros
### -s o -short
Muestra la salida en formato compacto, con una letra al incio que indica el estado del archivo.

```bash
git status -s
```

Las letras más comunes son: 
- `M` -> modificado
- `A` -> agregado al staging
- `??` -> archivo nuevo sin rastrear (untracked)

### -b o -branch
Muestra el nombre de la rama actual y su relación con la rama remota (si va adelante, atrás o está al día).

```bash
git status -b
```

### --porcelain
Similar a `--short` pero con un formato estable pensado para ser procesado por scripts.

```bash
git status --porcelain
```

### -u o --untracked-files
Controla cómo se muestran los archivos sin rastrear.

- `no`-> no los muestra
- `normal` -> muestra carpetas sin rasterar (valor por defecto)
- `all` -> muestra cada archivo individualmente, incluso dentro de carpetas sin rastrear

```bash
git status -u all
```

## Ejemplos
1. Ver el estado de los archivos antes de hacer un commit:

```bash
meryl@streep:~$ git status
On branch feat/estado-archivo-MS
Changes not staged for commit:
  (use "git add ..." to update what will be committed)
        modified:   indice.md

Untracked files:
  (use "git add ..." to include in what will be committed)
        merge-rebase.md
        status.md
```

2. Agregar los archivos y verificar que quedaron en staging:

```bash
meryl@streep:~$ git add merge-rebase.md status.md
meryl@streep:~$ git status -s
A  merge-rebase.md
A  status.md 
    M indice.md
```