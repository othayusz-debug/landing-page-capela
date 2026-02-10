FROM nginx:alpine

# 1. Remove a página padrão "Welcome to Nginx" para não confundir
RUN rm -rf /usr/share/nginx/html/*

# 2. Copia seus arquivos para lá
COPY . /usr/share/nginx/html

# 3. Garanta as permissões (para o Nginx conseguir ler)
RUN chmod -R 755 /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

