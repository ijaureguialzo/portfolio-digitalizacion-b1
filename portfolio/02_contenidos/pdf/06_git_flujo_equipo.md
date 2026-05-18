# 06_git_flujo_equipo

## Página 1

Flujo de trabajo

En equipo    Distribuido    Ramificado

git

## Página 2

Características del flujo de trabajo

<table>
  <tr>
    <th>En equipo</th>
    <td>Varias personas aportan cambios al repositorio</td>
  </tr>
  <tr>
    <th>Distribuido</th>
    <td>Hay múltiples copias locales y remotas del repositorio</td>
  </tr>
  <tr>
    <th>Ramificado</th>
    <td>Trabajamos con varias líneas de tiempo en paralelo</td>
  </tr>
</table>

## Página 3

El equipo de desarrollo

Noa    Hugo    María
Lucía    Marc

## Página 4

Roles

## Página 5

Gestor del proyecto
Lucía

## Página 6

Desarrollador
Marc

## Página 7

Tareas y responsabilidades

## Página 8

Tareas del gestor

• Crear el repositorio compartido del proyecto en GitHub

• Configurar el README.md y la licencia

• Crear el fichero .gitignore principal

• Opcional: crear el proyecto inicial (IntelliJ, NetBeans...)

## Página 9

Tareas de los desarrolladores

• Realizar un *fork* del repositorio compartido a la cuenta personal

• Clonar el *fork* personal al equipo local usando GitKraken (todos, incluido el gestor)

• Confirmar y subir cambios a su *fork* personal en GitHub

## Página 10

Responsabilidades de los desarrolladores

• Enviar los cambios para su integración en el proyecto compartido mediante pull requests, nunca directamente

• Actualizar su fork con los cambios de otros miembros del equipo o de la organización

## Página 11

Responsabilidades del gestor

• Integrar (o no) los cambios que lleguen mediante pull requests

• Resolver los posible conflictos de integración que surjan

## Página 12

Tareas y responsabilidades

REPOSITORIO COMUN (ORGANIZACIÓN)
REPOSITORIO REMOTO (PERSONAL)
REPOSITORIO LOCAL (PERSONAL)
COPIA DE TRABAJO

Gestiona
PULL REQUEST
MERGE
PULL
CLONE
PUSH
CHECKOUT
ADD + COMMIT
DISCARD
PUSH
INIT
Gestor del proyecto
GitHub
Local
Desarrollador
Desarrollador
Desarrollador
Desarrollador
Desarrollador
IJ
DB

## Página 13

Regla de oro

El repositorio común solo debe recibir cambios a través de pull requests, para que el proceso de integración sea más explícito y tenga que haber comunicación en el equipo, lo que ayuda a evitar problemas por cambios no controlados.

## Página 14

Ejemplo de pull request

Check user instead of organization when creating a repo from a template via API #16346

API documentation for repos/generate action implemented on #15968 says for the owner parameter: The organization or person who will own the new repository.

Current code only checks if destination owner is an organization and error is given if trying to copy a template to another user.

Checking for user instead of organization allows for both targets.

## Página 15

https://github.com/traefik/traefik/issues/12253

https://github.com/traefik/traefik/pull/12256

## Página 16

Excepto si se especifica lo contrario, esta presentación está bajo licencia

https://creativecommons.org/licenses/by/4.0/

© 2026 Ion Jaureguialzo Sarasola. Algunos derechos reservados.

