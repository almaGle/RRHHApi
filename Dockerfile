FROM node:20-alpine

# Establece el directorio de trabajo
WORKDIR /app

# Copia el package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias del proyecto
RUN npm install

# Copia el resto de los archivos de la aplicación
COPY . .

# Expone el puerto en el que la aplicación estará escuchando
EXPOSE 4000

# Comando para ejecutar la aplicación
CMD ["npm", "start"]
