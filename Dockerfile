FROM nginx:latest
COPY . /usr/share/nginx/html
COPY . /var/www/html/
RUN  python -m http.server 8000
EXPOSE 8000
CMD ["nginx", "-g", "daemon off;"]