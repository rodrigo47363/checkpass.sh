# checkpass

## Descripción

`checkpass.sh` es un script de Bash diseñado para verificar si una contraseña específica está presente en un archivo de diccionario. Este script es útil para comprobar la seguridad de contraseñas, asegurando que no estén entre las contraseñas comúnmente utilizadas y conocidas.

## Características

- **Interfaz interactiva**: Proporciona un menú fácil de usar para que los usuarios especifiquen la contraseña y la ruta al diccionario.
- **Verificación de archivos**: Comprueba si el archivo de diccionario especificado existe antes de realizar la búsqueda.
- **Mensajes de ayuda**: Incluye una opción de ayuda para guiar a los usuarios en el uso del script.

## Requisitos

- Bash

## Instalación

1. **Clonar el repositorio:**

    ```bash
    git clone https://github.com/rodrigo47363/checkpass.git
    cd checkpass
    ```

2. **Dar permisos de ejecución:**

    ```bash
    chmod +x checkpass.sh
    ```

## Uso

1. **Ejecutar el script:**

    ```bash
    ./checkpass.sh
    ```

2. **Seguir el menú interactivo:**

    - **Opción 1**: Especificar una contraseña para buscar.
    - **Opción 2**: Especificar la ruta al archivo de diccionario.
    - **Opción 3**: Comprobar si la contraseña está en el diccionario.
    - **Opción 4**: Mostrar el mensaje de ayuda.
    - **Opción 5**: Salir del script.

### Ejemplo de uso

```bash
$ ./checkpass.sh
Seleccione una opción:
1. Especificar una contraseña
2. Especificar la ruta al diccionario
3. Comprobar la contraseña en el diccionario
4. Mostrar ayuda
5. Salir
Seleccione una opción: 1
Escribe tu contraseña que quieres buscar: password123
Seleccione una opción:
1. Especificar una contraseña
2. Especificar la ruta al diccionario
3. Comprobar la contraseña en el diccionario
4. Mostrar ayuda
5. Salir
Seleccione una opción: 2
Escribe la ruta al diccionario (por ejemplo, /ruta/a/rockyou.txt): /ruta/al/diccionario/rockyou.txt
Seleccione una opción:
1. Especificar una contraseña
2. Especificar la ruta al diccionario
3. Comprobar la contraseña en el diccionario
4. Mostrar ayuda
5. Salir
Seleccione una opción: 3
La contraseña 'password123' se encuentra en el diccionario.
```

## Contribuciones

¡Las contribuciones son bienvenidas! Por favor, sigue los siguientes pasos para contribuir:

1. Haz un fork del repositorio.
2. Crea una nueva rama (`git checkout -b feature/nueva-funcionalidad`).
3. Realiza tus cambios y haz commit (`git commit -am 'Añadir nueva funcionalidad'`).
4. Haz push a la rama (`git push origin feature/nueva-funcionalidad`).
5. Abre un Pull Request.

## Licencia

Este proyecto está licenciado bajo la Licencia MIT. Para más detalles, consulta el archivo [LICENSE](LICENSE).

## Contacto

Para cualquier pregunta o sugerencia, por favor, contacta a [tu-email@dominio.com](mailto:tu-email@dominio.com).
```
