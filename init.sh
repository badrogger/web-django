#nginx conf
sudo rm /etc/nginx/sites-enabled/default
sudo rm /etc/nginx/sites-enabled/test.conf
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart

#gunicorn conf
sudo rm -rf /etc/gunicorn.d/test
sudo rm -rf /etc/gunicorn.d/ask
sudo ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
sudo ln -s /home/box/web/etc/gunicorn_ask.conf /etc/gunicorn.d/ask
sudo /etc/init.d/gunicorn restart

#database conf
sudo /etc/init.d/mysql restart
mysql -uroot -e "DROP DATABASE ASK"
mysql -uroot -e "CREATE DATABASE ASK"
mysql -uroot -e "CREATE USER 'ba'@'localhost' IDENTIFIED BY 'ba'"
mysql -uroot -e "GRANT ALL PRIVILEGES ON ASK.* TO 'ba'@'localhost'"
mysql -uroot -e "FLUSH PRIVILEGES;"

python /home/box/web/ask/manage.py makemigrations
