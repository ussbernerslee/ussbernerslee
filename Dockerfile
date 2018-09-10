FROM nginx
COPY public_html /usr/share/nginx/html

RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y ifupdown isc-dhcp-client
COPY iface-eth0-ipv6.conf /etc/network/interfaces.d/60-iface-eth0-ipv6.cfg

RUN mkdir /etc/letsencrypt
COPY letsencrypt/live/www.ussbernerslee.com/fullchain.pem /etc/letsencrypt
COPY letsencrypt/live/www.ussbernerslee.com/privkey.pem /etc/letsencrypt
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf