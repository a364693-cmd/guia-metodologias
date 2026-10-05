 
#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/lib/menu.sh"

# Validar parámetro obligatorio
if [ $# -ne 1 ]; then
    echo -e "${RED}Error: Debe proporcionar exactamente un parámetro.${NC}"
    echo "Uso correcto: $0 [-a | -t]"
    echo "  -a : Metodologías Ágiles"
    echo "  -t : Metodologías Tradicionales"
    exit 1
fi

case $1 in
    -a)
        menu_agil
        ;;
    -t)
        menu_tradicional
        ;;
    *)
        echo -e "${RED}Error: Parámetro '$1' no reconocido.${NC}"
        echo "Uso correcto: $0 [-a | -t]"
        exit 1
        ;;
esac
