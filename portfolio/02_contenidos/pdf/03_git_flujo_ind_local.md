# 03_git_flujo_ind_local

## Página 1

Flujo de trabajo

Individual    Local    Lineal

git

## Página 2

Características

<table>
  <tr>
    <th>Individual</th>
    <td>Sólo nosotros hacemos cambios en el repositorio</td>
  </tr>
  <tr>
    <th>Local</th>
    <td>Solo hay una copia local del repositorio</td>
  </tr>
  <tr>
    <th>Lineal</th>
    <td>Solo trabajamos con una línea de tiempo</td>
  </tr>
</table>

## Página 3

Flujo básico

1. Creamos o modificamos archivos en el directorio de trabajo

2. Seleccionamos los archivos que vamos a incluir en la instantánea añadiéndolos al área de preparación

3. Confirmamos los cambios: se crea la instantánea firmada de los archivos que están en el área de preparación y se almacena de manera permanente en el directorio Git

## Página 4

Crear cambios

echo "Contenido del fichero A" > a.txt

En la rama master
No hay commits todavía
Archivos sin seguimiento:
(usa "git add <archivo>..." para incluirlo a lo que será confirmado)
a.txt
no hay nada agregado al commit pero hay archivos sin seguimiento presentes (usa "git add" para hacerles seguimiento)

## Página 5

Añadir los cambios al área de preparación

git add a.txt

En la rama master
No hay commits todavía
Cambios a ser confirmados:
(usa "git rm --cached <archivo>..." para sacar del área de stage)
nuevos archivos: a.txt

## Página 6

Confirmar los cambios

git commit -m "Primer commit"

[master (commit-raíz) 9cf82fd] Primer commit
1 file changed, 1 insertion(+)
create mode 100644 a.txt

## Página 7

Visualizar el histórico de cambios

git log

commit 9cf82fd92d77d453b6f2957212bedc759dbb6c9c (HEAD -> master)
Author: Ion Jaureguialzo Sarasola <ion@jaureguialzo.com>
Date:   Fri Jun 7 15:56:47 2024 +0200

    Primer commit

## Página 8

Buenas prácticas: mensajes de commit

• Escribir el asunto con una mayúscula al principio y sin punto al final (50 caracteres máximo)

• Separar el asunto del cuerpo con una línea en blanco

• Utilizar el cuerpo del mensaje para explicar qué y por qué, no cómo (aproximadamente 72 caracteres)

https://github.blog/2022-06-30-write-better-commits-build-better-projects/

## Página 9

Buenas prácticas: mensajes de commit

Fix bug #2344

This fixes the incorrect translations reported in bug #2344.

## Página 10

Buenas prácticas: commits atómicos

• Los commits atómicos son una única unidad de trabajo (una única tarea o corrección)

• Agilizan las revisiones del código

• Facilitan las reversiones, ya que pueden aplicarse o revertirse sin efectos secundarios no deseados

• El objetivo no es crear cientos de commits, sino que los cambios estén agrupados por contexto

## Página 11

Excepto si se especifica lo contrario, esta presentación está bajo licencia

https://creativecommons.org/licenses/by/4.0/

© 2026 Ion Jaureguialzo Sarasola. Algunos derechos reservados.

