FROM tiangolo/uwsgi-nginx-flask:python3.8

COPY ./app /app

COPY requirements.txt /
RUN pip install --no-cache-dir -r /requirements.txt

EXPOSE 9090

CMD ["python3", "/app/main.py"]

