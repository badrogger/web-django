sudo ln -sf /home/jops/learning/web-django/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
sudo /etc/init.d/nginx restart

#sudo rm -r /etc/gunicorn.d/*
#sudo ln -sf /home/box/web/etc/hello_gnc.py   /etc/gunicorn.d/hello_gnc.py
#sudo ln -sf /home/box/web/etc/ask_gnc.py   /etc/gunicorn.d/ask_gnc.py
#sudo /etc/init.d/gunicorn restart
gunicorn -b 0.0.0.0:8080 hello:app
gunicorn -b 0.0.0.0:8000 etc/ask/ask.wsgi:app &
