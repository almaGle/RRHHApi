
# API de Gestión de Empleados

Esta es una API REST para gestionar empleados, que permite realizar operaciones CRUD (Crear, Leer, Actualizar, Borrar) sobre los empleados en una base de datos. La API incluye:

- Manejo exhaustivo de códigos HTTP.
- Paginación de resultados.
- Manejo de caché con Redis.

## Requisitos

Para poder ejecutar la API, asegúrate de tener instalados los siguientes componentes:

- **Docker**
- **Docker Compose**
- **Node.js** (versión 14 o superior)
- **MySQL** (a través de XAMPP, se recomienda que tenga la configuración por default debido a la configuracion de la API)
- **Redis**
- **Puertos**: Asegúrate de que los puertos **4000**, **3307**, y **6379** estén libres.

### Instalación de Requisitos

1. **Node.js**: Descarga e instala Node.js desde la [página oficial](https://nodejs.org/en).
2. **Docker y Docker Compose**: Instala Docker y Docker Compose desde la [página oficial de Docker](https://www.docker.com/get-started).
3. **MySQL**: Instala y configura MySQL. Puedes utilizar XAMPP para facilitar el proceso.
4. **Redis**: Instala Redis y asegúrate de que esté en funcionamiento. Puedes seguir las instrucciones de la [página oficial de Redis](https://redis.io/docs/getting-started/).

## Instalación de la API

1. Clona el repositorio en tu directorio preferido:

   ```bash
   git clone https://github.com/almaGle/RRHHApi
   cd RRHHApi
   ```

2. Instala las dependencias de Node.js:

   ```bash
   npm install
   ```

3. Si Swagger no se instala automáticamente, instálalo manualmente:

   ```bash
   npm install swagger-ui-express swagger-jsdoc
   ```

4. Construye y levanta los contenedores con Docker Compose:

   ```bash
   docker-compose build
   docker-compose up -d
   ```

## Uso

Una vez que los contenedores estén en funcionamiento (incluyendo la aplicación, la base de datos y Redis), la API estará disponible en:

```
http://localhost:4000
```

Para acceder a la documentación de los endpoints (Swagger), ve a:

```
http://localhost:4000/api-docs
```

## Detener Contenedores

Para detener los contenedores, ejecuta:

```bash
docker-compose down
```

Para detener los contenedores y eliminar volúmenes e imágenes locales:

```bash
docker-compose down --rmi local -v
```

