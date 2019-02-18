FROM python:3.7

WORKDIR /usr/src/app

COPY ./requirements.txt /usr/src/app/requirements.txt

RUN pip install -r requirements.txt

COPY . /usr/src/app

EXPOSE 5000

CMD ["python", "manage.py", "runserver"]
