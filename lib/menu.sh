 
#!/bin/bash

# Importar dependencias locales
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/utils.sh"
source "$SCRIPT_DIR/crud.sh"

function submenu_metodologia() {
    local nombre_sec="$1"
    local archivo="$2"

    mkdir -p "$(dirname "$archivo")"
    touch "$archivo"

    while true; do
        clear_screen
        echo -e "${PURPLE}Usted está en la sección ${nombre_sec},${NC}"
        echo -e "${PURPLE}seleccione la opción que desea utilizar.${NC}\n"
        echo "1. Agregar información"
        echo "2. Buscar información"
        echo "3. Eliminar información"
        echo "4. Leer base de información"
        echo "5. Volver al menú anterior"
        echo "6. Salir"
        echo ""
        read -p "Seleccione una opción [1-6]: " opc_sub

        case $opc_sub in
            1)
                clear_screen
                agregar_info "$archivo" "$nombre_sec"
                pause_screen
                ;;
            2)
                clear_screen
                buscar_info "$archivo" "$nombre_sec"
                pause_screen
                ;;
            3)
                clear_screen
                eliminar_info "$archivo" "$nombre_sec"
                pause_screen
                ;;
            4)
                clear_screen
                leer_base "$archivo" "$nombre_sec"
                pause_screen
                ;;
            5)
                return 0
                ;;
            6)
                echo -e "${GREEN}¡Gracias por usar la Guía Interactiva! Saliendo...${NC}"
                exit 0
                ;;
            *)
                echo -e "${RED}Opción inválida.${NC}"
                pause_screen
                ;;
        esac
    done
}

function menu_agil() {
    while true; do
        clear_screen
        echo -e "${CYAN}Bienvenido a la guía rápida de Agile,${NC}"
        echo "para continuar seleccione un tema:"
        echo "1. SCRUM"
        echo "2. XP (Programación Extrema)"
        echo "3. Kanban"
        echo "4. Crystal"
        echo "5. Salir"
        echo ""
        read -p "Seleccione una opción [1-5]: " opc

        case $opc in
            1) submenu_metodologia "SCRUM" "data/scrum.inf" ;;
            2) submenu_metodologia "XP (Programación Extrema)" "data/xp.inf" ;;
            3) submenu_metodologia "Kanban" "data/kanban.inf" ;;
            4) submenu_metodologia "Crystal" "data/crystal.inf" ;;
            5) echo -e "${GREEN}Saliendo de la aplicación...${NC}"; exit 0 ;;
            *) echo -e "${RED}Opción no válida.${NC}"; pause_screen ;;
        esac
    done
}

function menu_tradicional() {
    while true; do
        clear_screen
        echo -e "${CYAN}Bienvenido a la guía rápida de metodologías tradicionales,${NC}"
        echo "para continuar seleccione un tema:"
        echo "1. Cascada"
        echo "2. Espiral"
        echo "3. Modelo V"
        echo "4. Salir"
        echo ""
        read -p "Seleccione una opción [1-4]: " opc

        case $opc in
            1) submenu_metodologia "Cascada" "data/cascada.inf" ;;
            2) submenu_metodologia "Espiral" "data/espiral.inf" ;;
            3) submenu_metodologia "Modelo V" "data/modelo-v.inf" ;;
            4) echo -e "${GREEN}Saliendo de la aplicación...${NC}"; exit 0 ;;
            *) echo -e "${RED}Opción no válida.${NC}"; pause_screen ;;
        esac
    done
}
