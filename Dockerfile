FROM nginx:mainline-alpine
COPY public_html /usr/share/nginx/html

RUN mkdir /etc/letsencrypt
COPY letsencrypt/live/www.ussbernerslee.com/fullchain.pem /etc/letsencrypt
COPY letsencrypt/live/www.ussbernerslee.com/privkey.pem /etc/letsencrypt
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf