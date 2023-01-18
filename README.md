# docker-service
Este servicio permite lanzar todos los proyectos de la aplicación, e
interconectarlos.

### Lanzar servicios

Existen tres posibles acciones para cada servicio

```sh
$ make up-{name} # Arrancar el servicio en segundo plano.
```
```sh
$ make up-{name}-logs # Arrancar el servicio y ver la consola.
```
```sh
$ make stop-{name} # Detener el servicio.
```
```sh
$ make status # Ver el estados de los servicios.
```

Donde {name} es el nombre de tu repositorio.

En el caso de utilizar Windows debeis lanzar los comandos de la siguiente manera:

```sh
$ .\make.bat up-{name} # Arrancar el servicio en segundo plano.
```
```sh
$ .\make.bat up-{name}-logs # Arrancar el servicio y ver la consola.
```
```sh
$ .\make.bat stop-{name} # Detener el servicio.
```
```sh
$ .\make.bat status # Ver el estados de los servicios.
```

Si quieres lanzar todos los proyectos deberás utilizar:

```sh
$ make up-all
```

Y si quieres pararlos:
```sh
$ make stop-all
```