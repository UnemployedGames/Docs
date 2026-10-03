# Godot

Godot es el motor de videojuegos de código abierto más capaz actualmente,
tiene una serie de cuestiones a tener en cuenta.

## Tipado estático obligatorio

GDScript, el lenguaje de programación integrado con Godot, originamente se diseño
como uno de [tipado dinámico] (donde las variables pueden cambiar de tipo con cualquier
reasignación).

La aparición de herramientas como [mypy] para Python o [TypeScript] para JavaScript
demostraron una preferencia hacia el tipado estático dadas sus garantias de exactitud
y la reducción de errores en tiempo de ejecución.

El equipo de Godot, en la versión 3.1, añadio una sintaxis de tipos **opcional**.
Posteriormente, en la versión 4.2 se añadio una serie de configuraciones para
imponer su obligatoriedad.

Para habilitar el tipado estático obligatorio haga lo siguiente:

1. Vaya a `Proyecto` > `Configuración de proyecto...`.
2. Habilite los `Ajustes Avanzados`.
3. Vaya a `Depurar` > `GDScript`.
4. Configue como `error` las siguientes entradas:
- `Declaración sin tipo`
- `Acceso a Propiedad Inseguro`
- `Acceso a Método Inseguro`
- `Casteo Inseguro`
- `Argumento de Llamada Inseguro`

_Opciones de configuración recomendadas extraidas del [blog de Allen Pestaluky][allenwp-godot-static-typing]._

## Normas de estilo y nomenclatura

Se recomienda seguir de forma estricta la [guía de estilo oficial de GDScript].

Por el contrario, no existe un documento oficial de calidad que indice la nomenclatura
a seguir en los nombres de archivos y directorios. Se recomienda dar uso de
nombres _naturales_ con espacios, mayusculas y otros caracteres especiales, por
ejemplo, `res://Zonas/Bahía secreta/Escena.tscn`.

[tipado dinámico]: https://es.wikipedia.org/wiki/Tipado_din%C3%A1mico
[mypy]: https://mypy-lang.org/
[TypeScript]: https://www.typescriptlang.org/
[allenwp-godot-static-typing]: https://allenwp.com/blog/2023/10/03/how-to-enforce-static-typing-in-gdscript
[guía de estilo oficial de GDScript]: https://docs.godotengine.org/es/4.5/tutorials/scripting/gdscript/gdscript_styleguide.html
