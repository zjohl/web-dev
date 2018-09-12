server {
        # Provided by Nat Tuck in course notes
        listen 80;
        listen [::]:80;
        
        root /home/zamir/web/zamirjohl.com/hw01;
        
        index index.html;
       
	server_name hw01.zamirjohl.com;
 
        location / {
                # First attempt to serve request as file, then 
                # as directory, then fall back to displaying a 404.
                try_files $uri $uri/ =404;
        }
}

