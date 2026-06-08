# Uso de IA en el proyecto

## Para qué se utilizó

* Estadistica para captura de un conflicto previo a su resolución, indicando el hash del
commit asociado: Se uso la IA para desarrollar la solucion final.   

* Resolver la obtención del commit con la mayor cantidad de archivos modificados, dado que no existe un comando nativo de Git que resuelva esto en un solo paso.

    Comando resultante: 
    ```bash
    git log --oneline | ForEach-Object {
    $hash = ($_ -split ' ')[0]
    $count = (git diff-tree --no-commit-id -r --name-only $hash).Count
    [PSCustomObject]@{Hash=$hash; Count=$count}} | Sort-Object Count -Descending | Select-Object -First 1
    ```