module.exports = (req, res, next)=>{
    return res.status(200).json({code: 200, message: "Bienvenido al departamento de recursos humanos de Taller de Node.js S.A. de C.V."})
}