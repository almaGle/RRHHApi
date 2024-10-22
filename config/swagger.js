const swaggerJsDoc = require('swagger-jsdoc');
const swaggerUi = require('swagger-ui-express');

const swaggerOptions = {
    swaggerDefinition: {
        openapi: '3.0.0', 
        info: {
            title: 'API de Gestión de Empleados', 
            version: '1.0.0', 
            description: 'API para gestionar empleados con características de CRUD', 
        },
        servers: [
            {
                url: 'http://localhost:4000', 
            },
        ],
    },
    apis: ['./routes/*.js'], 
};

const swaggerDocs = swaggerJsDoc(swaggerOptions);

module.exports = { swaggerUi, swaggerDocs };
