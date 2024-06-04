FROM httpd:2.4

# Instalar git para clonar el repositorio
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Clonar el repositorio en un directorio temporal
RUN git clone https://github.com/sebastiandavidfalconi96/Grupo03-EXAMEN_CODIGO /tmp/website

# Copiar el contenido del repositorio al directorio raíz de Apache
RUN cp -r /tmp/website/* /usr/local/apache2/htdocs/

# Exponer el puerto 80
EXPOSE 80
