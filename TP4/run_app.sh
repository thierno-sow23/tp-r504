docker run -d \
	-p 5000:5000 \
	--network net-tp4 \
	--name flask_mysql_app \
python-flask-mysql

