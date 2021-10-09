Export conda environment:
conda env export --no-builds | grep -v "^prefix: " > environment.yaml

Create conda environment:
conda env create --file environment.yaml

Update conda environment:
conda env update --name flask --file environment.yaml --prune
