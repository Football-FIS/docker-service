# docker-service
Este servicio permite lanzar todos los proyectos de la aplicación, e
interconectarlos.

### Primeros pasos

Debes crear un archivo .env con la misma estructura que .env.example. Lo
debes rellenar con las url de los distitos servicios.

Por defecto serán las siguientes:

``TEAM_SERVICE_URL=http://localhost:8000/``

``MATCH_SERVICE_URL=http://localhost:8001/``

``MATCH_STATUS_SERVICE_URL=http://localhost:8002/``

``PLAYER_SERVICE_URL=http://localhost:8003/``

__Cuando configures tu compose.yaml acuerdate de colocar el puerto adecuado.__

### Lanzar servicios

Existen tres posibles acciones para cada servicio

```sh
$ up-{name} # Arrancar el servicio en segundo plano.
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
