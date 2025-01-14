FROM python:3.8.10
COPY requirements.txt ./
RUN pip3 install -r requirements.txt
COPY . ./
RUN python3 manage.py makemigrations
RUN python3 manage.py migrate
RUN chmod +x docker_run_server.sh
ENTRYPOINT ["./docker_run_server.sh"]
