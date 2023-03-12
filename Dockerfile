FROM python:3.10.10-slim-buster

WORKDIR /sar_app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 5000/tcp

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]
