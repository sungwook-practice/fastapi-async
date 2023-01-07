FROM python:3.9

COPY ./app/requirements.txt /code/app/requirements.txt
COPY ./app/uncorrest_async_loginsleep_main.py /code/app/main.py

WORKDIR /code

RUN pip install --no-cache-dir --upgrade -r /code/app/requirements.txt

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
