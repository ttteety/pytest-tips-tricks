install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt 

test:
	python -m pytest -vv --cov=hello --cov=greeting tests
	python -m pytest --nbval notebook.ipynb

debug:
	python -m pytest -vv --pdb # Debugger is invoked

one-test:
	python -m pytest -vv tests/test_greeting.py::test_my_name

format:
	black *.py 

lint: 
	pylint --disable=R,C hello.py 

all: install lint test format 