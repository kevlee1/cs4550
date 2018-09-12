server {
	listen 80;
	listen [::]:80;

	root /home/klee/www/leekev.com/html;

	index index.html;
	
	server_name leekev.com www.leekev.com;

	location / {
		try_files $uri $uri/ =404;
	}
}
