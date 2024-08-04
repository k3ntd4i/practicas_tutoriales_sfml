# SCRUM de SFML

## Detalles

En el archivo `.gitignore` se le dice a git que ignore todos los archivos de CLion para no subir cosas innecesarias

## Contribución

### 0. Configurar git

```bash
git config --global pull.rebase false
git config --global init.defaultBranch main
git config --global core.autocrfl true
git config --global core.editor notepad
```

### 1. Clonar el repositorio

```bash
git clone https://github.com/k3ntd4i/practicas_tutoriales_sfml/tree/k3nt
```

### 2. Crear la rama propia

Poner el nick propio para el nombre de la rama

```bash
git branch "nick"
```

Moverse a la rama creada

```bash
git switch "nick"
```

### 3. Crear el proyecto CLion

Sin crear nuevas carpetas ni nada, abrir el CLion en el repositorio local (en la carpeta `practicas_tutoriales_sfml`)

### 4. Practicar

Una vez creado el proyecto CLion en la carpeta del repositorio y estando en la rama con su nick, se procede a realizar lo que quieran con SFML

### 5. Commitear cambios

Se sigue el procedimiento normal de `add` y luego `commit` (poner un mensaje descriptivo)

### 6. Asignar el repositorio remoto

```bash
git remote add origin https://github.com/k3ntd4i/practicas_tutoriales_sfml
```

### 7. Asignar la rama adecuada para `push`

Lo que le sigue al procedimiento normal de `add` y luego `commit`, es hacer `push`. Pero primero se debe poner la rama adecuada (la rama que se crearon con su nick)

```bash
git push -u origin "nick"
```

De aca para adelante ya se puede hacer `push` normalito luego de hacer algún commit

```bash
git push
```

Si quieren hacer algún cambio en alguna otra rama, mejor **avisar**.
