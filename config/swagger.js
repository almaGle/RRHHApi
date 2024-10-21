const swaggerJsDoc = require('swagger-jsdoc');
const swaggerUi = require('swagger-ui-express');

const swaggerOptions = {
    swaggerDefinition: {
        openapi: '3.0.0', // Versión de OpenAPI
        info: {
            title: 'API de Gestión de Empleados', // Título de la API
            version: '1.0.0', // Versión de la API
            description: 'API para gestionar empleados con características de CRUD', // Descripción
        },
        servers: [
            {
                url: 'http://localhost:4000', // URL de tu servidor
            },
        ],
    },
    apis: ['./routes/*.js'], // Ruta donde se encuentran tus archivos de rutas
};

const swaggerDocs = swaggerJsDoc(swaggerOptions);

module.exports = { swaggerUi, swaggerDocs };
