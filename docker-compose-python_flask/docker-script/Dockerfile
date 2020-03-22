FROM python:3.7-alpine
WORKDIR /code
ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY . /code
#COPY requirements.txt /code/requirements.txt
RUN mkdir -p /logs/gunicorn
RUN pip install -i https://pypi.douban.com/simple/  -r requirements.txt
COPY . .
CMD ["gunicorn", "server:api", "-c", "gunicorn.config.py"]
