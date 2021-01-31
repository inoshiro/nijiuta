FROM jordanirabor/python3.7-pip-pipenv:latest
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD ["python", "./nijiuta/manage.py", "runserver", "0.0.0.0:8000"]
