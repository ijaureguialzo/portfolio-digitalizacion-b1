# 04_git_flujo_ind_dist

## Página 1

Flujo de trabajo

Individual    Distribuido    Lineal

git

"Icons" | Font Awesome | CC BY 4.0

## Página 2

Repositorios distribuídos

![Diagrama de repositorios distribuidos, mostrando un servidor y dos computadoras (A y B) con sus bases de datos de versiones y archivos.](page_573_312_1002_627.png)

## Página 3

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
    <th>Lineal</th>
    <td>Solo trabajamos con una línea de tiempo</td>
  </tr>
</table>

## Página 4

Preparar el entorno de trabajo distribuido

<table>
  <tr>
    <th>Flujo</th>
    <th>¿Repositorio local?</th>
    <th>¿Repositorio remoto?</th>
    <th>Acciones siguientes</th>
  </tr>
  <tr>
    <td>Básico</td>
    <td>No</td>
    <td>Sí</td>
    <td>Clonar el repositorio remoto</td>
  </tr>
  <tr>
    <td rowspan="2">Alternativo</td>
    <td>Sí</td>
    <td>No</td>
    <td>Crear el repositorio remoto<br>Vincular el repositorio remoto al local</td>
  </tr>
  <tr>
    <td>No</td>
    <td>No</td>
    <td>Inicializar el repositorio (local o remoto) y seguir el flujo básico o alternativo</td>
  </tr>
</table>

## Página 5

Flujo básico

1. Descargamos una copia del repositorio remoto
2. Creamos commits en el repositorio local
3. Enviamos los cambios al repositorio remoto, sincronizándolo con el local

## Página 6

Repositorio remoto

## Página 7

Obtener la URL del repositorio

## Página 8

Obtener la URL del repositorio

## Página 9

Descargar una copia del repositorio remoto

git clone https://github.com/ijaureguialzo/segundo-proyecto.git

Clonando en 'segundo-proyecto'...
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Recibiendo objetos: 100% (3/3), listo.

## Página 10

Crear y confirmar cambios

echo "Contenido del fichero B" > b.txt
git add b.txt
git commit -m "Creado el fichero B"

[main 44d5b9c] Creado el fichero B
1 file changed, 1 insertion(+)
create mode 100644 b.txt

## Página 11

Enviar los cambios al remoto

git push

Enumerando objetos: 4, listo.
Contando objetos: 100% (4/4), listo.
Compresión delta usando hasta 10 hilos
Comprimiendo objetos: 100% (2/2), listo.
Escribiendo objetos: 100% (3/3), 706 bytes | 706.00 KiB/s, listo.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
To https://github.com/ijaureguialzo/segundo-proyecto.git
  2631f12..44d5b9c  main -> main

## Página 12

Visualizar el histórico de cambios

git log

commit 44d5b9c2265c185ff5271ead5a32747dc6f0f944 (HEAD -> main, origin/main, origin/HEAD)
Author: Ion Jaureguialzo Sarasola <ion0jaureguialzo.com>
Date:   Thu Jun 13 20:37:35 2024 +0200

    Creado el fichero B

commit 2631f12f281e27cb0b351553662203387fa10c97
Author: Ion Jaureguialzo Sarasola <ion0jaureguialzo.com>
Date:   Thu Jun 13 20:29:01 2024 +0200

    Initial commit

## Página 13

Visualizar el histórico de cambios

## Página 14

Visualizar el histórico de cambios

## Página 15

Flujo alternativo

1. Inicializamos un repositorio remoto vacío
2. Vinculamos el repositorio remoto con el local
3. Creamos commits en el repositorio local
4. Enviamos los cambios al repositorio remoto, sincronizándolo con el local

## Página 16

Repositorio local ya existente

git init tercer-proyecto
cd tercer-proyecto
echo "tercer-proyecto" > README.md
git add --all
git commit -m "Commit inicial"

Inicializado repositorio Git vacío en /Users/.../tercer-proyecto/.git/

[master (commit-raíz) a082347] Commit inicial
  1 file changed, 1 insertion(+)
create mode 100644 README.md

## Página 17

Inicializar un repositorio remoto vacío

## Página 18

Inicializar un repositorio remoto vacío

<table>
  <tr>
    <th>Repository template</th>
    <td>No template</td>
  </tr>
  <tr>
    <th>Owner</th>
    <td>ijaureguialzo</td>
  </tr>
  <tr>
    <th>Repository name</th>
    <td>tercer-proyecto</td>
  </tr>
  <tr>
    <th>Description</th>
    <td>Ejemplo de repositorio vacío.</td>
  </tr>
  <tr>
    <th>Visibilidad</th>
    <td>Public</td>
  </tr>
  <tr>
    <th>Add a README file</th>
    <td>No</td>
  </tr>
  <tr>
    <th>Add .gitignore</th>
    <td>No</td>
  </tr>
  <tr>
    <th>Choose a license</th>
    <td>None</td>
  </tr>
</table>

## Página 19

Repositorio remoto vacío

## Página 20

Ayuda de GitHub

Quick setup — if you've done this kind of thing before
Set up in Desktop   or   HTTPS   SSH   https://github.com/ijaureguialzo/tercer-proyecto.git
Get started by creating a new file or uploading an existing file. We recommend every repository include a README, LICENSE, and .gitignore.

...or create a new repository on the command line
echo "# tercer-proyecto" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/ijaureguialzo/tercer-proyecto.git
git push -u origin main

...or push an existing repository from the command line
git remote add origin https://github.com/ijaureguialzo/tercer-proyecto.git
git branch -M main
git push -u origin main

## Página 21

Vincular el repositorio remoto

git remote add origin https://github.com/ijaureguialzo/tercer-proyecto.git

(sí todo va bien, no sale nada en pantalla)

## Página 22

Rama principal del repositorio

• Cuando se inicializa un repositorio, se configura el nombre de la rama principal

• Los nombres más habituales son master o main

• Al hacer el primer push al repositorio remoto, tenemos que especificar el nombre de la rama remota que vamos a vincular con nuestra rama local

## Página 23

Obtener el nombre de la rama actual

git status

En la rama master
nada para hacer commit, el árbol de trabajo está limpio

## Página 24

Enviar los cambios al remoto

git push -u origin master

Enumerando objetos: 3, listo.
Contando objetos: 100% (3/3), listo.
Escribiendo objetos: 100% (3/3), 624 bytes | 624.00 KiB/s, listo.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
To https://github.com/ijaureguialzo/tercer-proyecto.git
 * [new branch]      master -> master
rama 'master' configurada para rastrear 'origin/master'.

## Página 25

Repositorio remoto sincronizado

## Página 26

Excepto si se especifica lo contrario, esta presentación está bajo licencia

https://creativecommons.org/licenses/by/4.0/

© 2026 Ion Jaureguialzo Sarasola. Algunos derechos reservados.

