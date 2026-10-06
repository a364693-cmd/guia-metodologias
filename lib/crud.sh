#!/bin/bash

function agregar_info() {
    local archivo="$1"
    local nombre_sec="$2"
    echo -e "${CYAN}--- Agregar Información (${nombre_sec}) ---${NC}"

    read -p "Ingrese el concepto: " concepto
    concepto=$(echo "$concepto" | tr '[:upper:]' '[:lower:]' | xargs)

    if [ -z "$concepto" ]; then
        echo -e "${RED}El concepto no puede estar vacío.${NC}"
        return
    fi

    # Verificar existencia con Regex
    if grep -E -q "^\[${concepto}\]" "$archivo" 2>/dev/null; then
        echo -e "${YELLOW}El concepto '[${concepto}]' ya existe en la base de datos.${NC}"
        return
    fi

    read -p "Ingrese la definición: " definicion
    definicion=$(echo "$definicion" | xargs)

    if [ -z "$definicion" ]; then
        echo -e "${RED}La definición no puede estar vacía.${NC}"
        return
    fi

    echo "[${concepto}] .- ${definicion}" >> "$archivo"
    echo -e "${GREEN}Registro agregado exitosamente.${NC}"
}

function buscar_info() {
    local archivo="$1"
    local nombre_sec="$2"
    echo -e "${CYAN}--- Buscar Información (${nombre_sec}) ---${NC}"

    read -p "Ingrese el concepto a buscar: " concepto
    concepto=$(echo "$concepto" | tr '[:upper:]' '[:lower:]' | xargs)

    if [ -z "$concepto" ]; then
        echo -e "${RED}El concepto no puede estar vacío.${NC}"
        return
    fi

    echo -e "${BLUE}Buscando coincidencia exacta mediante expresión regular...${NC}\n"
    local resultado
    resultado=$(grep -E -i "^\[${concepto}\]" "$archivo" 2>/dev/null)

    if [ -n "$resultado" ]; then
        echo -e "${GREEN}Registro encontrado:${NC}"
        echo -e "$resultado"
    else
        echo -e "${RED}El concepto '[${concepto}]' no fue encontrado en la base de información.${NC}"
    fi
}

function eliminar_info() {
    local archivo="$1"
    local nombre_sec="$2"
    echo -e "${CYAN}--- Eliminar Información (${nombre_sec}) ---${NC}"

    read -p "Ingrese el concepto a eliminar: " concepto
    concepto=$(echo "$concepto" | tr '[:upper:]' '[:lower:]' | xargs)

    if [ -z "$concepto" ]; then
        echo -e "${RED}El concepto no puede estar vacío.${NC}"
        return
    fi

    if grep -E -q "^\[${concepto}\]" "$archivo" 2>/dev/null; then
        # Eliminación limpia usando sed delimitado
        sed -i "/^\[${concepto}\]/d" "$archivo"
        echo -e "${GREEN}El concepto '[${concepto}]' ha sido eliminado correctamente.${NC}"
    else
        echo -e "${RED}El concepto '[${concepto}]' no existe, no se pudo eliminar.${NC}"
    fi
}

function leer_base() {
    local archivo="$1"
    local nombre_sec="$2"
    echo -e "${CYAN}--- Base de Información (${nombre_sec}) ---${NC}\n"

    if [ ! -f "$archivo" ] || [ ! -s "$archivo" ]; then
        echo -e "${YELLOW}El archivo de información está vacío o no existe.${NC}"
        return
    fi

    cat "$archivo"
}
