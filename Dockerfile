FROM python:3.13-slim
WORKDIR /app
COPY . /app

RUN apt update -y && apt install -y

RUN pip install -r requirement.txt
CMD [ "python3", "app.py" ]