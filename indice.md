# Trabajo Practico Git

## Integrantes
* Baldres, Alejandro Lucas
* Belardinelli Beker, Marianela Andrea
* Dabús, Julieta

## Introducción

Este repositorio constituye la entrega del trabajo práctico centrado en el dominio de Git a través de la implementación de un registro de explicaciones sobre comandos y flujos de trabajo. El objetivo principal no es la exhaustividad del contenido teórico, sino evidenciar el uso adecuado de operaciones avanzadas de Git: commits con tipos semánticos (feat, fix, style, revert), merges, rebases, formateo y reversiones.

La estructura del repositorio se organiza de la siguiente manera:

* explicaciones/: contiene archivos Markdown, cada uno dedicado a un comando o concepto de Git. Cada adición o modificación de estos archivos se realiza mediante pull requests y commits clasificados según el tipo requerido.

* IA.md: documento obligatorio que detalla cualquier utilización de modelos de lenguaje (LLM) durante el desarrollo del trabajo.

* indice.md: este archivo, que actúa como índice y guía de navegación.

## Modalidad de Trabajo
El presente documento detalla la distribución de tareas para el Trabajo Práctico de Git.  
Siguiendo las buenas prácticas requeridas por la cátedra , la mayor parte del desarrollo, la redacción de contenidos conceptuales, las revisiones (reviews) en GitHub y las decisiones de diseño del repositorio se realizaron de forma cooperativa y en conjunto mediante reuniones de equipo.  
Sin embargo, para garantizar que todos los integrantes experimentaran con los diferentes flujos y comandos obligatorios de Git, se asignaron responsabilidades específicas de la siguiente manera:  

### Distribución de Roles y Comandos en la Cursada
**Belardinelli Beker, Marianela Andrea:**  
* Responsable de la documentación de los comandos git commit y git revert.  


**Dabús, Julieta:**  
* Responsable de la documentación git merge y git rebase.  

**Baldres, Alejandro Lucas:**  
* Responsable de la documentación git init y git add.  


**Trabajo en Conjunto:**  
* La redacción general de todo lo no incluido en la distribución detallada anteriormente, la definición de la estructura en ramas independientes , y la resolución de conflictos finales  se realizaron de manera coordinada entre todos los miembros en sesiones de reunión compartidas.  

#### Responsables del Relevamiento de Estadísticas
Para la confección del reporte de analíticas del repositorio , cada integrante asumió el rol de auditar y extraer métricas específicas utilizando comandos avanzados de Git:  
* **Baldres, Alejandro Lucas:**  
*Métrica 1*: Identificación del integrante que realizó la mayor cantidad de commits, detallando la cantidad exacta obtenida.  
*Métrica 2*: Captura de pantalla de un conflicto previo a su resolución, documentando el hash del commit asociado en el flujo de trabajo.  
* **Dabús, Julieta:**  
*Métrica 3*: Conteo y registro de la cantidad total de conflictos producidos durante la integración de las ramas.  
*Métrica 4*: Relevamiento de la cantidad total de ramas (tanto locales como remotas) existentes en el ciclo de vida del repositorio.  
* **Belardinelli Beker, Marianela Andrea:**  
*Métrica 5*: Cálculo de la cantidad total de merges realizados con éxito en la rama principal.  
*Métrica 6*: Localización del commit con la mayor cantidad de archivos modificados, especificando detalladamente su código hash, el volumen de archivos involucrados y la captura del código diff correspondiente a dichos cambios.  

**Nota de Cumplimiento**: Todo el historial del repositorio ha sido estructurado bajo la convención de Conventional Commits (ej. feat:, fix:, style:, etc) , asegurando que cada modificación se trabajara desde una rama independiente antes de ser aprobada mediante Pull Request.  


## Indice
[01 - Git init](./explicaciones/01-git-init.md)  
[02 - Git add](./explicaciones/02-git-add.md)  
[02 - Git commit](./explicaciones/03-git-commit.md)  
[03 - Merge y Rebase](./explicaciones/03-merge-rebase.md)  
[04 - Git Status](./explicaciones/04-status.md)  
[05 - Git Status](./explicaciones/05-git-log.md)  
[06 - Estadisticas](estadisticas.md)