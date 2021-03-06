FROM python:3.9.5-slim-buster
RUN apt-get update \
&& apt-get install gcc -y \
&& apt-get clean
MAINTAINER Shekhar Gulati "shekhargulati84@gmail.com"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
