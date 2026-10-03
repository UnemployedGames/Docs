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
	@echo
	@echo "  ignore      Genera un nuevo '.gitignore' juntando el contenido"
	@echo "              de todos los archivos del directorio 'Ignore'"
	@echo "  help        Muestra este mensaje de ayuda.".

.PHONY: ignore
ignore:
	printf "# ¡ARCHIVO GENERADOR AUTOMATICAMENTE, NO EDITAR!\n" > .gitignore
	printf "# Regeneralo con el comando 'make ignore'.\n\n" >> .gitignore

	find ./Ignore/ -type f -name "*" -exec cat {} + >> .gitignore
