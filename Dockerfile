FROM python:3.9

WORKDIR /app

ADD . /app

RUN pip install -r requirements.txt

EXPOSE 8000

ENV NAME TaskManager

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]