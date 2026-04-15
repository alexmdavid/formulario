# Usamos una imagen ligera de Nginx
FROM nginx:alpine

# Copiamos el contenido de tu carpeta local al servidor Nginx
# Asegúrate de que tus archivos estén en la raíz del proyecto
COPY . /usr/share/nginx/html

# Exponemos el puerto 80
EXPOSE 80

# Comando para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]