# 05_git_flujo_ind_ramas

## Página 1

Flujo de trabajo

Individual    Distribuido    Ramificado

git

## Página 2

Características del flujo de trabajo

<table>
  <tr>
    <th>Individual</th>
    <td>Sólo nosotros hacemos cambios en el repositorio</td>
  </tr>
  <tr>
    <th>Distribuido</th>
    <td>Hay una copia local del repositorio y una o más copias remotas</td>
  </tr>
  <tr>
    <th>Ramificado</th>
    <td>Trabajamos con varias líneas de tiempo en paralelo</td>
  </tr>
</table>

## Página 3

Repositorio local

git init cuarto-proyecto
cd cuarto-proyecto
echo "cuarto-proyecto" > README.md
git add --all
git commit -m "Commit inicial"

Inicializado repositorio Git vacío en /Users/.../cuarto-proyecto/.git/

[master (commit-raíz) e7cca41] Commit inicial
  1 file changed, 1 insertion(+)
create mode 100644 README.md

## Página 4

Crear una rama

git branch test

(sí todo va bien, no sale nada en pantalla)

## Página 5

Comprobar la rama actual

git status

En la rama master
nada para hacer commit, el árbol de trabajo está limpio

## Página 6

Seleccionar otra rama

git switch test

Cambiado a rama 'test'

## Página 7

Crear y confirmar cambios

echo "Contenido del fichero C" > c.txt
git add c.txt
git commit -m "Creado el fichero C"

[test 593e5f3] Creado el fichero C
1 file changed, 1 insertion(+)
create mode 100644 c.txt

## Página 8

Mostrar la línea de tiempo

git log

commit 593e5f34114b1ec0eb4695985db692291726a06e (HEAD -> test)
Author: Ion Jaureguialzo Sarasola <ion0jaureguialzo.com>
Date:   Thu Sep 12 11:08:50 2024 +0200

    Creado el fichero C

commit e7cca41c47494ba65cee4ef6e51d0825f858ce19 (master)
Author: Ion Jaureguialzo Sarasola <ion0jaureguialzo.com>
Date:   Thu Sep 12 11:03:46 2024 +0200

    Commit inicial

## Página 9

Fusionar las ramas

git switch master

git merge test

Cambiado a rama 'master'
Actualizando e7cca41..593e5f3
Fast-forward
  c.txt | 1 +
  1 file changed, 1 insertion(+)
  create mode 100644 c.txt

## Página 10

Mostrar la línea de tiempo

git log

commit 593e5f34114b1ec0eb4695985db692291726a06e (HEAD -> master, test)
Author: Ion Jaureguialzo Sarasola <ion0jaureguialzo.com>
Date:   Thu Sep 12 11:08:50 2024 +0200

    Creado el fichero C

commit e7cca41c47494ba65cee4ef6e51d0825f858ce19
Author: Ion Jaureguialzo Sarasola <ion0jaureguialzo.com>
Date:   Thu Sep 12 11:03:46 2024 +0200

    Commit inicial

## Página 11

Mostrar la línea de tiempo

## Página 12

Posibles situaciones al fusionar

• Avance rápido: fast-forward

• Fusión automática: merge

• Conflicto: Intervención manual + merge

## Página 13

Avance rápido

• Se va a hacer la fusión de una rama secundaria develop con la rama actual main

• No ha habido nuevos commits en la rama actual

![Diagrama de ramas main y develop con commits c2, c3, c4, c5](page_1042_340_563_312.png)

## Página 14

Avance rápido

• En el fast-forward todos los commits de la rama secundaria se añadirán tal cual en la rama actual y esta acabará apuntando al último commit publicado en la rama secundaria

![Diagrama de ramas principales y secundarias con commits](page_1042_384_484_120.png)

## Página 15

Fusión automática

• Se va a hacer la fusión de una rama secundaria develop con la rama actual main

• Hay commits publicados en la rama actual desde el momento de la bifurcación

• No hay cambios que entren en conflicto entre ambas ramas

![Diagrama de ramas main y develop con commits C3, C4, C5, C6](page_1042_370_563_246.png)

## Página 16

Fusión automática

• El merge consistirá en la publicación de un commit automático que unirá de nuevo las dos ramas y que añadirá los cambios de la rama secundaria a la rama actual

![Diagrama de ramas principales y secundarias con commits](page_1042_370_579_246.png)

## Página 17

Conflicto

• Se va a hacer la fusión de una rama secundaria develop con la rama actual main

• Hay commits publicados en la rama actual desde el momento de la bifurcación

• Hay cambios conflictivos entre las dos ramas (entre C4 y C7)

![Diagrama de ramas con commits en main y develop, mostrando conflicto entre C4 y C7](page_1042_370_484_246.png)

## Página 18

Conflicto

• En el momento del merge Git alertará de los cambios conflictivos y no lo completará automáticamente

• Tendremos que intervenir manualmente para seleccionar los cambios que queremos incluir en el commit

• Una vez seleccionados los cambios, se realiza el commit correspondiente al merge (C8) y se termina el proceso de fusión

## Página 19

Provocar un conflicto

echo "Contenido del fichero D" > d.txt
git add d.txt
git commit -m "Creado el fichero D"

[master 080b7a3] Creado el fichero D
1 file changed, 1 insertion(+)
create mode 100644 d.txt

## Página 20

Provocar un conflicto

git switch test

echo "Nuevo contenido del fichero D" > d.txt
git add d.txt
git commit -m "Creado el fichero D"

Cambiado a rama 'test'

[test 5e81e5a] Creado el fichero D
1 file changed, 1 insertion(+)
create mode 100644 d.txt

## Página 21

Mostrar la línea de tiempo

![Ventana de software mostrando la línea de tiempo de un repositorio de código, con commits y sucesos de archivo](page_320_256_1408_768.png)

## Página 22

Fusionar las ramas

git switch master

git merge test

Cambiado a rama 'master'
Auto-fusionando d.txt
CONFLICTO (agregar/agregar): Conflicto de fusión en d.txt
Fusión automática falló; arregle los conflictos y luego realice un commit con el resultado.

## Página 23

Mostrar la línea de tiempo

![Ventana de terminal mostrando la línea de tiempo de un repositorio Git](page_320_256_1408_768.png)

## Página 24

Solucionar el conflicto

nano d.txt

<<<<< HEAD
Contenido del fichero D
========
Nuevo contenido del fichero D
>>>>>> test

## Página 25

Solucionar el conflicto

git add d.txt
git commit

[master 85dc53c] Merge branch 'test'

## Página 26

Mostrar la línea de tiempo

![Ventana de terminal mostrando la línea de tiempo de un proyecto en desarrollo, con commits, ramas y archivos modificados.](page_370_246_1247_728.png)

## Página 27

Solucionar el conflicto

## Página 28

Mostrar la línea de tiempo

![Ventana de terminal mostrando la línea de tiempo de un proyecto en desarrollo, con commits y ramas](page_370_246_1247_726.png)

## Página 29

Seguir practicando con ramas
https://learngitbranching.js.org

## Página 30

Excepto si se especifica lo contrario, esta presentación está bajo licencia

https://creativecommons.org/licenses/by/4.0/

© 2026 Ion Jaureguialzo Sarasola. Algunos derechos reservados.

