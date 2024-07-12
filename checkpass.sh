#!/bin/bash

# Script para comprobar si una contraseña está en un archivo de diccionario
# Función para mostrar el banner 
mostrar_banner() {


           /$$                           /$$                                                           /$$      
          | $$                          | $$                                                          | $$      
  /$$$$$$$| $$$$$$$   /$$$$$$   /$$$$$$$| $$   /$$  /$$$$$$   /$$$$$$   /$$$$$$$ /$$$$$$$     /$$$$$$$| $$$$$$$ 
 /$$_____/| $$__  $$ /$$__  $$ /$$_____/| $$  /$$/ /$$__  $$ |____  $$ /$$_____//$$_____/    /$$_____/| $$__  $$
| $$      | $$  \ $$| $$$$$$$$| $$      | $$$$$$/ | $$  \ $$  /$$$$$$$|  $$$$$$|  $$$$$$    |  $$$$$$ | $$  \ $$
| $$      | $$  | $$| $$_____/| $$      | $$_  $$ | $$  | $$ /$$__  $$ \____  $$\____  $$    \____  $$| $$  | $$
|  $$$$$$$| $$  | $$|  $$$$$$$|  $$$$$$$| $$ \  $$| $$$$$$$/|  $$$$$$$ /$$$$$$$//$$$$$$$//$$ /$$$$$$$/| $$  | $$
 \_______/|__/  |__/ \_______/ \_______/|__/  \__/| $$____/  \_______/|_______/|_______/|__/|_______/ |__/  |__/
                                                  | $$                                                          
                                                  | $$                                                          
                                                  |__/                                                                                                                                                                      
}


# Función para mostrar el menú
mostrar_menu() {
    echo "Seleccione una opción:"
    echo "1. Especificar una contraseña"
    echo "2. Especificar la ruta al diccionario"
    echo "3. Comprobar la contraseña en el diccionario"
    echo "4. Mostrar ayuda"
    echo "5. Salir"
}

# Función para mostrar el mensaje de ayuda
mostrar_ayuda() {
    echo "Uso: Este script permite comprobar si una contraseña está en un archivo de diccionario."
    echo
    echo "Menú de opciones:"
    echo "1. Especificar una contraseña: Solicita al usuario que introduzca una contraseña para buscar."
    echo "2. Especificar la ruta al diccionario: Solicita al usuario que introduzca la ruta al archivo de diccionario."
    echo "3. Comprobar la contraseña en el diccionario: Busca la contraseña en el archivo de diccionario especificado."
    echo "4. Mostrar ayuda: Muestra este mensaje de ayuda."
    echo "5. Salir: Termina la ejecución del script."
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
            # Buscar la contraseña en el archivo de diccionario
            if grep -wq "$pass" "$diccionario"; then
                echo "La contraseña '$pass' se encuentra en el diccionario."
            else
                echo "La contraseña '$pass' NO se encuentra en el diccionario."
            fi
            ;;
        4)
            mostrar_ayuda
            ;;
        5)
            echo "Saliendo..."
            exit 0
            ;;
        *)
            echo "Opción inválida. Por favor, selecciona una opción del 1 al 5."
            ;;
    esac
done
