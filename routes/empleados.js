const express = require('express');
const empleado = express.Router();
const db = require('../config/database');
const redis = require('redis');


module.exports = (client) => {
    /**
     * @swagger
     * /empleados:
     *   post:
     *     summary: Crear un nuevo empleado
     *     description: Inserta un nuevo empleado en la base de datos.
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             type: object
     *             properties:
     *               Nombres:
     *                 type: string
     *                 example: "Juan"
     *               Apellidos:
     *                 type: string
     *                 example: "Pérez"
     *               Telefono:
     *                 type: string
     *                 example: "123456789"
     *               Email:
     *                 type: string
     *                 example: "juan.perez@empresa.com"
     *               Direccion:
     *                 type: string
     *                 example: "Calle Falsa 123"
     *     responses:
     *       201:
     *         description: Empleado insertado correctamente.
     *       400:
     *         description: Campos incompletos.
     *       500:
     *         description: Ocurrió un error.
     */
    empleado.post('/', async (req, res, next) => {
        const { Nombres, Apellidos, Telefono, Email, Direccion } = req.body;
        if (Nombres && Apellidos && Telefono && Email && Direccion) {
            let query = "INSERT INTO empleado (Nombres, Apellidos, Telefono, Email, Direccion) ";
            query += "VALUES (?, ?, ?, ?, ?)";

            const rows = await db.query(query, [Nombres, Apellidos, Telefono, Email, Direccion]);
            console.log(rows);

            if (rows.affectedRows == 1) {
               
                await client.del('empleados');
                return res.status(201).json({ code: 201, message: "Empleado insertado correctamente" });
            }
            return res.status(500).json({ code: 500, message: "Ocurrió un error" });
        }
        return res.status(400).json({ code: 400, message: "Campos incompletos" });
    });

    /**
     * @swagger
     * /empleados/{id}:
     *   delete:
     *     summary: Borrar un empleado
     *     description: Elimina un empleado de la base de datos utilizando su ID.
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         description: ID del empleado a borrar.
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Empleado borrado correctamente.
     *       404:
     *         description: Empleado no encontrado.
     *       500:
     *         description: Ocurrió un error.
     */
    empleado.delete("/:id([0-9]{1,3})", async (req, res, next) => {
        const query = "DELETE FROM empleado WHERE IDEmpleado = ?";
        const rows = await db.query(query, [req.params.id]);
        if (rows.affectedRows == 1) {
           
            await client.del('empleados');
            return res.status(200).json({ code: 200, message: "Empleado borrado correctamente" });
        }
        return res.status(404).json({ code: 404, message: "Empleado no encontrado" });
    });

    /**
     * @swagger
     * /empleados/{id}:
     *   put:
     *     summary: Actualizar un empleado
     *     description: Actualiza la información de un empleado existente.
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         description: ID del empleado a actualizar.
     *         schema:
     *           type: integer
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             type: object
     *             properties:
     *               Nombres:
     *                 type: string
     *               Apellidos:
     *                 type: string
     *               Telefono:
     *                 type: string
     *               Email:
     *                 type: string
     *               Direccion:
     *                 type: string
     *     responses:
     *       200:
     *         description: Actualizado correctamente.
     *       400:
     *         description: Campos incompletos.
     *       500:
     *         description: Ocurrió un error.
     */
    empleado.put("/:id([0-9]{1,3})", async (req, res, next) => {
        const { Nombres, Apellidos, Telefono, Email, Direccion } = req.body;
        if (Nombres && Apellidos && Telefono && Email && Direccion) {
            let query = "UPDATE empleado SET Nombres=?, Apellidos=?, Telefono=?, Email=?, Direccion=? WHERE IDEmpleado=?";
            const rows = await db.query(query, [Nombres, Apellidos, Telefono, Email, Direccion, req.params.id]);

            if (rows.affectedRows == 1) {
              
                await client.del('empleados');
                return res.status(200).json({ code: 200, message: "Actualizado correctamente" });
            }
            return res.status(500).json({ code: 500, message: "Ocurrió un error" });
        }
        return res.status(400).json({ code: 400, message: "Campos incompletos" });
    });

    /**
     * @swagger
     * /empleados/{id}:
     *   patch:
     *     summary: Actualizar solo un campo de un empleado (nombre)
     *     description: Actualiza parcialmente la información de un empleado existente.
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         description: ID del empleado a actualizar.
     *         schema:
     *           type: integer
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             type: object
     *             properties:
     *               Nombres:
     *                 type: string
     *               
     *     responses:
     *       200:
     *         description: Actualizado correctamente.
     *       400:
     *         description: Campos incompletos.
     *       500:
     *         description: Ocurrió un error.
     */
    empleado.patch("/:id([1-9]{1,3})", async (req,res, next)=>{
        if (req.body.Nombres){
                let query =`UPDATE empleado SET Nombres='${req.body.Nombres}' WHERE IDEmpleado=${req.params.id}`;
                
        
                const rows=await db.query(query);
                
            
                if (rows.affectedRows==1){
                    return res.status(200).json({code:201, message:"actulizado correctamente"});
                }
                return res.status(500).json({code:500, message:"ocurrio un eror"});
                }
                return res.status(500).json({code:500, message:"campos incompletos"});    
        });
    /**
     * @swagger
     * /empleados:
     *   get:
     *     summary: Obtener todos los empleados
     *     description: Devuelve una lista de todos los empleados con paginación y soporte para filtros.
     *     parameters:
     *       - in: query
     *         name: page
     *         required: false
     *         description: Número de página para paginación (por defecto 1).
     *         schema:
     *           type: integer
     *       - in: query
     *         name: limit
     *         required: false
     *         description: Cantidad de empleados por página (por defecto 10).
     *         schema:
     *           type: integer
     *       - in: query
     *         name: filterField
     *         required: false
     *         description: Campo para filtrar los empleados.
     *         schema:
     *           type: string
     *       - in: query
     *         name: filterValue
     *         required: false
     *         description: Valor para filtrar los empleados.
     *         schema:
     *           type: string
     *     responses:
     *       200:
     *         description: Lista de empleados.
     *       500:
     *         description: Error en la base de datos.
     */
    empleado.get('/', async (req, res, next) => {
        const { page = 1, limit = 10, filterField, filterValue } = req.query;

     
        const offset = (page - 1) * limit;

        try {
            
            const cacheKey = `empleados:page=${page}:limit=${limit}${filterField ? `:filterField=${filterField}:filterValue=${filterValue}` : ''}`;
            const cacheEmpleados = await client.get(cacheKey);
            if (cacheEmpleados) {
                return res.status(200).json({ code: 200, message: JSON.parse(cacheEmpleados) });
            }

            let query = 'SELECT * FROM empleado';
            let queryParams = [];

            
            if (filterField && filterValue) {
                query += ' WHERE ?? = ?';
                queryParams.push(filterField, filterValue);
            }

            
            query += ' LIMIT ? OFFSET ?';
            queryParams.push(parseInt(limit), offset);

            const empleados = await db.query(query, queryParams);

            
            let totalQuery = 'SELECT COUNT(*) AS total FROM empleado';
            if (filterField && filterValue) {
                totalQuery += ' WHERE ?? = ?';
                queryParams = [filterField, filterValue];
            }

            const [totalCount] = await db.query(totalQuery, queryParams);
            const total = totalCount && totalCount[0] ? totalCount[0].total : 0; 

            await client.set(cacheKey, JSON.stringify({ total, page: parseInt(page), limit: parseInt(limit), data: empleados }), { EX: 60 });

            return res.status(200).json({
                total,
                page: parseInt(page),
                limit: parseInt(limit),
                data: empleados,
            });
        } catch (error) {
            console.error('Error al obtener empleados:', error);
            return res.status(500).json({ code: 500, message: "Error en la base de datos" });
        }
    });

    /**
     * @swagger
     * /empleados/{id}:
     *   get:
     *     summary: Obtener un empleado por ID
     *     description: Devuelve la información de un empleado específico utilizando su ID.
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         description: ID del empleado a obtener.
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Empleado encontrado.
     *       404:
     *         description: Empleado no encontrado.
     *       500:
     *         description: Error en la base de datos.
     */
    empleado.get('/:id([0-9]{1,3})', async (req, res, next) => {
        const id = req.params.id;

        try {
            const cacheEmpleado = await client.get(`empleado:${id}`);
            if (cacheEmpleado) {
                return res.status(200).json({ code: 200, message: JSON.parse(cacheEmpleado) });
            }

            const empleadoID = await db.query("SELECT * FROM empleado WHERE IDEmpleado = ?", [id]);

            if (empleadoID.length > 0) {
                await client.set(`empleado:${id}`, JSON.stringify(empleadoID), { EX: 60 });
                return res.status(200).json({ code: 200, message: empleadoID });
            }
            return res.status(404).json({ code: 404, message: "Empleado no encontrado" });
        } catch (error) {
            console.error('Error al obtener empleado:', error);
            return res.status(500).json({ code: 500, message: "Error en la base de datos" });
        }
    });

    /**
     * @swagger
     * /empleados/lastname/{lastname}:
     *   get:
     *     summary: Buscar empleados por apellido
     *     description: Devuelve una lista de empleados que coinciden con el apellido especificado, con paginación.
     *     parameters:
     *       - in: path
     *         name: lastname
     *         required: true
     *         description: Apellido para buscar empleados.
     *         schema:
     *           type: string
     *       - in: query
     *         name: page
     *         required: false
     *         description: Número de página para paginación (por defecto 1).
     *         schema:
     *           type: integer
     *       - in: query
     *         name: limit
     *         required: false
     *         description: Cantidad de empleados por página (por defecto 10).
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Lista de empleados que coinciden con el apellido.
     *       500:
     *         description: Error en la base de datos.
     */
    empleado.get('/lastname/:lastname([A-Za-z]+)', async (req, res, next) => {
        const lastname = req.params.lastname;
        const { page = 1, limit = 10 } = req.query;
        const offset = (page - 1) * limit;

        try {
            const cacheKey = `empleados:lastname=${lastname}:page=${page}:limit=${limit}`;
            const cacheEmpleados = await client.get(cacheKey);
            if (cacheEmpleados) {
                return res.status(200).json({ code: 200, message: JSON.parse(cacheEmpleados) });
            }

            const query = "SELECT * FROM empleado WHERE Apellidos LIKE ? LIMIT ? OFFSET ?";
            const empleados = await db.query(query, [`%${lastname}%`, parseInt(limit), offset]);

            
            const totalQuery = "SELECT COUNT(*) AS total FROM empleado WHERE Apellidos LIKE ?";
            const [totalCount] = await db.query(totalQuery, [`%${lastname}%`]);
            const total = totalCount && totalCount[0] ? totalCount[0].total : 0;

          
            await client.set(cacheKey, JSON.stringify({ total, page: parseInt(page), limit: parseInt(limit), data: empleados }), { EX: 60 });

            return res.status(200).json({
                total,
                page: parseInt(page),
                limit: parseInt(limit),
                data: empleados,
            });
        } catch (error) {
            console.error('Error al buscar empleados:', error);
            return res.status(500).json({ code: 500, message: "Error en la base de datos" });
        }
    });

    return empleado; 
};
