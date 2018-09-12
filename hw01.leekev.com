server {
    listen 80;
    listen [::]:80;

    root /home/klee/www/hw01.leekev.com/html;

    index index.html;

    server_name hw01.leekev.com;

    location / {
        try_files $uri $uri/ =404;
        }
}
