FROM alpine
RUN apk update && apk upgrade\
&& apk add nginx 
COPY index.html /usr/share/nginx/html
COPY nginx.conf /etc/nginx
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]  
EXPOSE 443 80