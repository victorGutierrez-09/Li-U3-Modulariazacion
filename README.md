# Prácticas de Ensamblador (MASM x86) - Unidad 3

Repositorio que contiene códigos de ensamblador con procedimientos, manejo de la pila y macros utilizando la librería Irvine32.

## Contenido y Enlaces a Prácticas

1. **[1. Procedimiento](U3/procedimiento_modularizar.asm)**
   * **Qué hace:** Utiliza la modularización para reutilizar un bloque de código que imprime un mensaje mediante un procedimiento llamado múltiples veces.
   * **Comprobación:** El mensaje se despliega en pantalla en los puntos requeridos sin duplicar líneas de código.

2. **[2. Procedimiento Anidado](U3/procedimientos_anidados.asm)**
   * **Qué hace:** Muestra el funcionamiento de un procedimiento que a su vez llama a otro procedimiento antes de regresar al flujo principal.
   * **Comprobación:** La pila guarda el orden de retorno (`LIFO`) permitiendo que cada `ret` regrese correctamente a su respectivo origen.

3. **[3. Validar Cadena](U3/validar_cadena.asm)**
   * **Qué hace:** Pide una cadena de texto al usuario y evalúa con un procedimiento si se ingresó texto o si está vacía.
   * **Comprobación:** Si se escribe texto, `EAX` es mayor a 0 y muestra que la cadena existe; si se da Enter vacío, muestra que no existe.

4. **[4. Macros](U3/macros.asm)**
   * **Qué hace:** Implementa macros para optimizar la impresión de mensajes y realizar operaciones aritméticas básicas.
   * **Comprobación:** Las macros se expanden al compilarse, ejecutando las instrucciones y mostrando el resultado numérico y los mensajes correctamente.