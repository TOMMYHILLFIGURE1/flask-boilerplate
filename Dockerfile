
FROM  continuumio/miniconda3

COPY /app .

#---------------- Prepare the envirennment
RUN conda update --name base conda &&\
    conda env create --file environment.yaml
SHELL ["conda", "run", "--name", "flask", "/bin/bash", "-c"]

EXPOSE 5000

ENTRYPOINT ["conda", "run", "--name", "flask", "python", "app.py"]