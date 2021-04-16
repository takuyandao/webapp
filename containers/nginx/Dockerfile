FROM nginx:1.15.8

RUN rm -f /etc/nginx/conf.d/*
COPY nginx.conf /etc/nginx/conf.d/webapp.conf
CMD /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf