# Git

Git a día de hoy se trata del SCM (_Source Code Management_) más utilizado del
mundo, su alta disponibilidad y gran documentación lo hacen la solución ideal
para la mayoria de proyectos de _software_.

Pero hay que ser consciente de sus limitaciones dentro el desarrollo de videojuegos.

## Archivos binarios de gran tamaño

Git permite preservar historiales de cambios de gran longitud en un poco espacio
gracias a [sus técnicas de compresión][compresión-git], pero estas se encuentran
limitadas a solo archivos de texto.

Por ello cada archivo binario que se añade a un repositorio se trata de una carga
más al mismo, pues **aunque sean posteriormente eliminados, sus datos permanecen
en el historial de forma permanente**. Esto se nota considerablemente al realizar
clonaciones.

**Cada vez que se modifica un archivo binario una nueva copia es almacenada junto
a la anterior.**

Extensiones como [Git LFS] solucionan este problema guardando archivos de gran
tamaño en almacenamientos auxiliares.

[compresión-git]: https://git-scm.com/book/en/v2/Git-Internals-Git-Objects
[Git LFS]: https://git-lfs.com
