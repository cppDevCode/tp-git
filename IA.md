# Uso de IA en el proyecto

## Para qué se utilizó

* Estadistica para captura de un conflicto previo a su resolución, indicando el hash del
commit asociado: Se uso la IA para desarrollar la solucion final.   

* Resolver la obtención del commit con la mayor cantidad de archivos modificados, dado que no existe un comando nativo de Git que resuelva esto en un solo paso.

    Comando resultante: 
    ```bash
    git log --oneline | while read hash msg; do echo "$hash $(git diff-tree --no-commit-id -r --name-only $hash | wc -l)"; done | sort -t' ' -k2 -rn | head -1
    ```