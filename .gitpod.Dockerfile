FROM  sra405/flask-boilerplate:0.0.13

COPY ./src/ .

EXPOSE 5000

ENTRYPOINT ["python", "app.py"]
