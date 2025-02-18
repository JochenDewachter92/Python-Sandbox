FROM python:3.11-alpine
WORKDIR /app
ADD . .
RUN pip install -r ./requirements.txt --no-cache-dir && rm ./requirements.txt

CMD ["python", "-u", "/app/src/main.py"]