FROM python:latest

WORKDIR /home

COPY . .

RUN pip install -r requirements.txt

EXPOSE 5000

CMD flask --app ./main.py run --debug -p 5000 --host 0.0.0.0