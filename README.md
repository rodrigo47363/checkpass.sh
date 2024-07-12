# Checkpass

## Descripción
Este script en Bash permite verificar si una contraseña especificada está presente en un archivo de diccionario.

## Funcionalidades
- **Especificar una contraseña**: Permite al usuario ingresar la contraseña que desea buscar.
- **Especificar la ruta al diccionario**: Solicita al usuario la ruta al archivo de diccionario donde se realizará la búsqueda.
- **Comprobar la contraseña exacta en el diccionario**: Busca la contraseña exactamente como se ingresó.
- **Comprobar la contraseña como palabra completa en el diccionario**: Busca la contraseña como una palabra completa.
- **Comprobar la contraseña como subcadena en el diccionario**: Busca la contraseña como una subcadena dentro de palabras más largas.
- **Mostrar ayuda**: Proporciona información sobre cómo utilizar el script y las opciones disponibles.
- **Salir**: Termina la ejecución del script.

## Uso
1. Ejecuta el script `checkpass.sh` desde la línea de comandos.
2. Sigue las instrucciones del menú interactivo para seleccionar las opciones correspondientes:
   - **1**: Especificar una contraseña.
   - **2**: Especificar la ruta al diccionario.
   - **3**: Comprobar la contraseña exacta en el diccionario.
   - **4**: Comprobar la contraseña como palabra completa en el diccionario.
   - **5**: Comprobar la contraseña como subcadena en el diccionario.
   - **6**: Mostrar la ayuda con información detallada sobre el uso del script.
   - **7**: Salir del script.

## Ejemplo de uso
```bash
./checkpass.sh
```

## Requisitos
- Bash (Shell de Unix/Linux)

## Notas
- Asegúrate de proporcionar la ruta correcta al archivo de diccionario para una búsqueda efectiva.
- Cada opción de búsqueda tiene su propósito:
  - **Opción 3**: Ideal para buscar una contraseña específica tal como fue ingresada.
  - **Opción 4**: Útil para encontrar contraseñas que sean palabras completas en el diccionario.
  - **Opción 5**: Recomendada cuando se busca una subcadena dentro de palabras más largas.

---

Este script ha sido desarrollado por [rodrigo47363](https://github.com/rodrigo47363) para facilitar la verificación de contraseñas en archivos de diccionario de manera rápida y efectiva. ¡Disfruta utilizando `checkpass` para asegurar tus contraseñas!

```bash
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
```

¡Asegúrate de utilizar `checkpass` de manera adecuada según tus necesidades de búsqueda de contraseñas!
```
