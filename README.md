# Checkpass

## Descripción
Este script en Bash permite comprobar si una contraseña especificada está presente en un archivo de diccionario.

## Funcionalidades
- **Especificar una contraseña**: Permite al usuario ingresar la contraseña que desea buscar.
- **Especificar la ruta al diccionario**: Solicita al usuario la ruta al archivo de diccionario donde se realizará la búsqueda.
- **Comprobar la contraseña en el diccionario**: Realiza la búsqueda de la contraseña especificada en el archivo de diccionario utilizando optimización con `strings` y `grep`.
- **Mostrar ayuda**: Proporciona información sobre cómo utilizar el script y las opciones disponibles.
- **Salir**: Termina la ejecución del script.

## Uso
1. Ejecuta el script `checkpass.sh` desde la línea de comandos.
2. Sigue las instrucciones del menú interactivo para seleccionar las opciones correspondientes:
   - **1**: Especificar una contraseña.
   - **2**: Especificar la ruta al diccionario.
   - **3**: Comprobar la contraseña en el diccionario.
   - **4**: Mostrar la ayuda con información detallada sobre el uso del script.
   - **5**: Salir del script.

## Ejemplo de uso
```bash
./checkpass.sh
```

## Requisitos
- Bash (Shell de Unix/Linux)

## Notas
- Asegúrate de proporcionar la ruta correcta al archivo de diccionario para una búsqueda efectiva.
- La búsqueda se optimiza utilizando `strings` para extraer cadenas imprimibles del diccionario y `grep` para buscar la contraseña de manera eficiente.

---

Este script ha sido desarrollado por [rodrigo47363] github.com/rodrigo47363 para facilitar la verificación de contraseñas en archivos de diccionario de manera rápida y efectiva.

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

¡Disfruta utilizando checkpass para verificar contraseñas de manera segura y eficiente!
```
