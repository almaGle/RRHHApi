const mysql = require('mysql')
const util = require('util')

const pool = mysql.createPool({
    connectionLimit: 10,
    host: 'host.docker.internal',
    user: 'root',
    password: '',
    database: 'rrhh',
})

pool.query = util.promisify(pool.query)
module.exports = pool

pool.getConnection((err, connection) => {
    if (err) {
        console.error('Error de conexión a la base de datos:', err);
    } else {
        console.log('Conexión a la base de datos exitosa');
        connection.release();
    }
});


