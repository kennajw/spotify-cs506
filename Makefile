PYTHON=python3
NOTEBOOK=cs506.ipynb
DATA=spotify_history.csv
OUTPUT=skipify.html

run:
	jupyter nbconvert --to html --execute $(NOTEBOOK) --output $(OUTPUT)

install:
	pip install -r requirements.txt

clean:
	rm -f $(OUTPUT)

.PHONY: run install clean