# Makefile

Los archivos _Makefile_ son desde hace varias décadas el formato por excelencia
para organizar una gran cantidad de _script_ o tareas pequeñas a realizar sobre
un proyecto de código.

Debido a ello son un formato que ha evolucionado de forma algo informal.

Con ello, y teniendo en cuenta el uso que se le va a dar en un contexto ajeno
a compilar proyectos de C o C++, se recomienda que estos den uso de la siguiente cabecera:

```makefile
# Este _Makefile_ ha sido escrito en un estricto dialecto según la especificación POSIX,
# se reduce principalmente a dar uso solo de _reglas de inferencia_ (_inference rules_)
# y de evitar _GNUismos_ como los comodines (_wildcards_, `*`).
#
# Vease este artículo por Chris Wellons sobre _Makefiles_ portables para saber más:
# <https://nullprogram.com/blog/2017/08/20> (Inglés).
#
# El directorio de trabajo actual (_CWD_) del entorno de ejecución de un _Makefile_
# permanece sin estar definido en el estándar. Es asumido que la implementación
# en uso sigue el comportamiento _de facto_ de la industria de ser el directorio
# donde este archivo se encuentra ubicado.

# Habilitar un modo de compatibilidad POSIX más estricto.
.POSIX:

# Evitar conflictos con sufijos extraños definidos en el estandar eliminando todos ellos.
.SUFFIXES:

.PHONY: all
all: help

.PHONY: help
help:
	@echo "Uso: make [objetivo]..."
	@echo
	@echo "Objetivos:"
```

Notesé los siguientes puntos:

- Habilitado el modo [POSIX estricto].
- Eliminado cualquier sufijo de inferencia añadido por defecto por la implementación.
- Uso exclusivo de [objetivos `PHONY`] para evitar conflictos con archivos del mismo nombre
  que el objetivo.
    - Notesé además que cada objetivo tiene su propia directiva `PHONY` a diferencia
      de la práctica común de tener una sola que recoja a todos ellos, esto mejora
      el mantenimiento de _Makefiles_ de gran extensión.

[POSIX estricto]: https://pubs.opengroup.org/onlinepubs/9799919799
[objetivos `PHONY`]: https://www.gnu.org/software/make/manual/html_node/Phony-Targets.html
