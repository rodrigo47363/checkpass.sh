#!/bin/bash

# Función para mostrar el banner
mostrar_banner() {
cat << "EOF"
       _               _                              _
  ___ | |__   ___  ___| | ___ __   __ _ ___ ___   ___| |__
 / _ \| '_ \ / _ \/ __| |/ / '_ \ / _` / __/ __| / __| '_ \
| (_) | | | |  __/ (__|   <| |_) | (_| \__ \__ \_\__ \ | | |
 \___/|_| |_|\___|\___|_|\_\ .__/ \__,_|___/___(_)___/_| |_|
                           |_|

EOF
}

# Función para mostrar el menú
mostrar_menu() {
    echo "Seleccione una opción:"
    echo "1. Especificar una contraseña"
    echo "2. Especificar la ruta al diccionario"
    echo "3. Comprobar la contraseña exacta en el diccionario"
    echo "4. Comprobar la contraseña como palabra completa en el diccionario"
    echo "5. Comprobar la contraseña como subcadena en el diccionario"
    echo "6. Mostrar ayuda"
    echo "7. Salir"
}

# Función para mostrar el mensaje de ayuda
mostrar_ayuda() {
    echo "Uso: Este script permite comprobar si una contraseña está en un archivo de diccionario."
    echo
    echo "Menú de opciones:"
    echo "1. Especificar una contraseña: Solicita al usuario que introduzca una contraseña para buscar."
    echo "2. Especificar la ruta al diccionario: Solicita al usuario que introduzca la ruta al archivo de diccionario."
    echo "3. Comprobar la contraseña exacta en el diccionario: Busca la contraseña exactamente como se ingresó."
    echo "4. Comprobar la contraseña como palabra completa en el diccionario: Busca la contraseña como una palabra completa."
    echo "5. Comprobar la contraseña como subcadena en el diccionario: Busca la contraseña como una subcadena dentro de palabras más largas."
    echo "6. Mostrar ayuda: Muestra este mensaje de ayuda."
    echo "7. Salir: Termina la ejecución del script."
}

# Inicializar variables
pass=""
diccionario=""

# Bucle del menú
while true; do
    mostrar_menu
    read -p "Seleccione una opción: " opcion
    case $opcion in
        1)
            read -p "Escribe tu contraseña que quieres buscar: " pass
            ;;
        2)
            read -p "Escribe la ruta al diccionario (por ejemplo, /ruta/a/rockyou.txt): " diccionario
            ;;
        3)
            # Verificar si se han especificado la contraseña y el diccionario
            if [[ -z "$pass" ]]; then
                echo "Error: No se ha especificado una contraseña. Seleccione la opción 1 para introducir una contraseña."
                continue
            fi
            if [[ -z "$diccionario" ]]; then
                echo "Error: No se ha especificado la ruta al diccionario. Seleccione la opción 2 para introducir la ruta al diccionario."
                continue
            fi
            # Verificar si el archivo de diccionario existe
            if [[ ! -f "$diccionario" ]]; then
                echo "El archivo de diccionario '$diccionario' no existe. Por favor, verifica la ruta e intenta de nuevo."
                continue
            fi
            # Buscar la contraseña exacta en el archivo de diccionario
            if strings "$diccionario" | grep -w -m1 "$pass"; then
                echo "La contraseña '$pass' se encuentra exactamente como se ingresó en el diccionario."
            else
                echo "La contraseña '$pass' NO se encuentra exactamente como se ingresó en el diccionario."
            fi
            ;;
        4)
            # Verificar si se han especificado la contraseña y el diccionario
            if [[ -z "$pass" ]]; then
                echo "Error: No se ha especificado una contraseña. Seleccione la opción 1 para introducir una contraseña."
                continue
            fi
            if [[ -z "$diccionario" ]]; then
                echo "Error: No se ha especificado la ruta al diccionario. Seleccione la opción 2 para introducir la ruta al diccionario."
                continue
            fi
            # Verificar si el archivo de diccionario existe
            if [[ ! -f "$diccionario" ]]; then
                echo "El archivo de diccionario '$diccionario' no existe. Por favor, verifica la ruta e intenta de nuevo."
                continue
            fi
            # Buscar la contraseña como palabra completa en el archivo de diccionario
            if strings "$diccionario" | grep -w -m1 "\<$pass\>"; then
                echo "La contraseña '$pass' se encuentra como palabra completa en el diccionario."
            else
                echo "La contraseña '$pass' NO se encuentra como palabra completa en el diccionario."
            fi
            ;;
        5)
            # Verificar si se han especificado la contraseña y el diccionario
            if [[ -z "$pass" ]]; then
                echo "Error: No se ha especificado una contraseña. Seleccione la opción 1 para introducir una contraseña."
                continue
            fi
            if [[ -z "$diccionario" ]]; then
                echo "Error: No se ha especificado la ruta al diccionario. Seleccione la opción 2 para introducir la ruta al diccionario."
                continue
            fi
            # Verificar si el archivo de diccionario existe
            if [[ ! -f "$diccionario" ]]; then
                echo "El archivo de diccionario '$diccionario' no existe. Por favor, verifica la ruta e intenta de nuevo."
                continue
            fi
            # Buscar la contraseña como subcadena en el archivo de diccionario
            if strings "$diccionario" | grep -m1 "$pass"; then
                echo "Se encontraron coincidencias de la subcadena '$pass' en el diccionario."
            else
                echo "No se encontraron coincidencias de la subcadena '$pass' en el diccionario."
            fi
            ;;
        6)
            mostrar_ayuda
            ;;
        7)
            echo "Saliendo..."
            exit 0
            ;;
        *)
            echo "Opción inválida. Por favor, selecciona una opción del 1 al 7."
            ;;
    esac
done
