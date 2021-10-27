FROM  continuumio/miniconda3

COPY environment.yaml environment.yaml

RUN conda env update --name base --file environment.yaml --prune && \
    conda init
ENV PATH /opt/conda/bin:$PATH

SHELL ["conda", "run", "-n", "base", "/bin/bash", "-c"]
