# Guía interactiva de metodologías de desarrollo de software

## Datos académicos

| Campo | Detalle |
|---|---|
| **Universidad** | Universidad Autónoma de Chihuahua |
| **Facultad** | Facultad de Ingeniería |
| **Carrera** | Ingeniería en Ciencias de la Computación |
| **Materia** | Desarrollo Basado en Plataformas |
| **Docente** | Mtro. Luis Antonio Ramírez Martínez |
| **Actividad** | Proyecto Primer Parcial. Guía interactiva de metodologías de desarrollo de software |
| **Alumno** | Alisandro Mendoza Espitia, Andrea Dominguez Rodriguez, Marcos Iram Casas Mora |
| **Matrícula** | 364693, 374234, 361853 |
| **Fecha de entrega** | 08/10/2026 |

## Descripción

Aplicación en Bash interactiva diseñada para explorar, consultar y administrar información de diversas metodologías de desarrollo de software (ágiles y tradicionales). El proyecto está empaquetado en un contenedor Docker para garantizar un entorno de ejecución portátil, aislado y reproducible en cualquier máquina, iniciando de manera automática.

## Objetivo

Aplicar y demostrar los conceptos fundamentales de las metodologías de desarrollo de software a través de una herramienta interactiva en terminal, integrando Bash scripting, manejo de archivos, expresiones regulares y buenas prácticas de despliegue con Docker.

## Tecnologías utilizadas

- Bash / Scripts de Shell
- Entorno Unix / Linux
- Expresiones Regulares
- Docker y Docker Hub
- Git y GitHub

## Requisitos previos

- Sistema operativo compatible con Unix/Linux (o WSL en Windows)
- Docker (versión 20.x o superior recomendada)
- Git

## Instalación

Obtén una copia limpia del repositorio y construye la imagen localmente ejecutando los siguientes comandos en tu terminal:

```bash
git clone https://github.com/a364693-cmd/guia-metodologias.git
cd guia-metodologias
docker build -t guia-metodologias:latest .

```

## Ejecución

**Ejecución Local:**

### Requisitos Previos
- Abrir la terminal y asegurarse de estar ubicado en la **carpeta raíz del proyecto**:
   ```bash
  Ej. cd ~/guia-metodologias

- Dar permisos de ejecución al script principal (solo la primera vez):
    chmod +x app.sh

- Para ejecutar el script localmente, utiliza los parámetros -a o -t según la guía que desees consultar:

# Consultar o gestionar el menú de Metodologías Ágiles
./app.sh -a

# Consultar o gestionar el menú de Metodologías Tradicionales
./app.sh -t

```

**Ejecución desde Docker Hub:**

Para ejecutar la aplicación directamente desde Docker Hub sin necesidad de clonar el código fuente, utiliza los siguientes comandos obligatorios con las banderas interactivas (`-it`):

```bash
# Descargar la imagen
docker pull markliaris/guia-metodologias:latest

# Ejecutar el menú de metodologías ágiles
docker run -it markliaris/guia-metodologias:latest -a

# Ejecutar el menú de metodologías tradicionales
docker run -it markliaris/guia-metodologias:latest -t

```

## Funcionalidades / uso

La aplicación se opera enteramente desde la terminal a través de un menú interactivo. Las principales operaciones son:

* **Agregar información:** Permite registrar nuevos conceptos y definiciones sin borrar los datos existentes.
* **Buscar información:** Permite localizar conceptos específicos utilizando expresiones regulares.
* **Eliminar información:** Borra un registro en específico conservando el resto de los datos.
* **Leer base de información:** Imprime en pantalla todos los conceptos y definiciones almacenados para la metodología seleccionada.

La navegación permanece activa tras cada operación hasta que el usuario decida salir explícitamente.

## Estructura general del proyecto

```text
guia-metodologias/
|-- app.sh
|-- scrum.inf
|-- xp.inf
|-- kanban.inf
|-- crystal.inf
|-- cascada.inf
|-- espiral.inf
|-- modelo-v.inf
|-- Dockerfile
`-- README.md

```

## Autor

Alisandro Mendoza Espitia — 364693
Andrea Dominguez Rodriguez — 374234
Marcos Iram Casas Mora — 361853

```

```
