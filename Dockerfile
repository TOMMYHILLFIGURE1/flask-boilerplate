
FROM  continuumio/miniconda3

COPY . .

#---------------- Prepare the envirennment
RUN conda env update --name base --file environment.yaml --prune

EXPOSE 5000

ENTRYPOINT ["python", "app.py"]
# ENTRYPOINT ["flask", "run"]
