from nginx/unit:1.29.0-php8.1
arg IP
run apt update && apt install -y qrencode wget libssh2-1-dev ssh libicu-dev libyaml-dev certbot && \
pecl install https://pecl.php.net/get/ssh2-1.3.1.tgz && \
pecl install https://pecl.php.net/get/yaml-2.2.2.tgz && \
docker-php-ext-install intl && \
wget https://github.com/ameshkov/dnslookup/releases/download/v1.8.1/dnslookup-linux-amd64-v1.8.1.tar.gz && \
tar -xf dnslookup-linux-amd64-v1.8.1.tar.gz
env PATH="$PATH:/linux-amd64"
