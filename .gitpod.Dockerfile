FROM  sra405/flask-boilerplate:0.0.10

COPY ./src/ .

EXPOSE 5000

SHELL ["conda", "run", "-n", "base", "/bin/bash", "-c"]

ENTRYPOINT ["python", "app.py"]
