head:
	@echo "For work with random frases of motivations"
venv: 
	virtualenv ~/.venv\
	&& source ~/.venv/bin/activate

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C,W1203,W0702 app.py

test:
	python -m pytest -vv --cov=app test_app.py

format:
	black *.py

all: install lint test format
app:
	python3 app.py

hello:# wtite for rpove function of this file
	@echo "Hello everyone, All Right"