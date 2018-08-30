FROM nginx
COPY public_html /usr/share/nginx/html

RUN mkdir /etc/letsencrypt
COPY letsencrypt/live/ussbernerslee.com/fullchain.pem /etc/letsencrypt
COPY letsencrypt/live/ussbernerslee.com/privkey.pem /etc/letsencrypt
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf