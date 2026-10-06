## Guía interactiva de metodologías de desarrollo de software

## Datos académicos

| Campo | Detalle |
|---|---|
| **Universidad** | Universidad Autónoma de Chihuahua |
| **Facultad** | Facultad de Ingeniería |
| **Carrera** | Ingeniería en Ciencias de la Computación |
| **Materia** | Desarrollo Basado en Plataformas |
| **Docente** | Mtro. Luis Antonio Ramírez Martínez |
| **Actividad** | Guía interactiva de metodologías de desarrollo de software |
| **Alumno** | Alisandro Mendoza Espitia, Andrea Dominguez Rodriguez, Marcos Iram Casas Mora |
| **Matrícula** | 364693, 374234, 361853 |
| **Fecha de entrega** | 08/10/2026 |

## Descripción

Aplicación en Bash interactiva diseñada para explorar, consultar y administrar información de diversas metodologías de desarrollo de software (ágiles y tradicionales). El proyecto está empaquetado en un contenedor Docker para garantizar un entorno de ejecución portátil, aislado y reproducible en cualquier máquina.

## Objetivo

Aplicar y demostrar los conceptos fundamentales de las metodologías de desarrollo de software a través de una herramienta interactiva, integrando buenas prácticas de despliegue y contenedorización con Docker.

## Tecnologías utilizadas

- Bash / Scripts de Shell
- Entorno Unix / Linux
- Docker y Docker Hub
- Git y GitHub

## Requisitos previos

- Sistema operativo compatible con Unix/Linux (o WSL en Windows)
- Docker (versión 20.x o superior recomendada)
- Git

## Instalación y Ejecución Local

Obtén una copia limpia del repositorio y construye la imagen localmente ejecutando los siguientes comandos en tu terminal:

```bash
git clone [https://github.com/a364693-cmd/guia-metodologias.git](https://github.com/a364693-cmd/guia-metodologias.git)
cd guia-metodologias
docker build -t guia-metodologias:latest .

# Descargar la imagen
docker pull [markliaris]/guia-metodologias:latest

# Ejecutar el menú de metodologías ágiles
docker run -it [markliaris]/guia-metodologias:latest -a

# Ejecutar el menú de metodologías tradicionales
docker run -it [markliaris]/guia-metodologias:latest -t

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

Autores

Alisandro Mendoza Espitia — 364693
Andrea Dominguez Rodriguez — 374234
Marcos Iram Casas Mora — 361853
