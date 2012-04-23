SHELL := /bin/bash

deps:
	pip install -r requirements.txt

lint:
	flake8 --exit-zero touchstone tests

dist:
	python setup.py sdist

site:
	cd docs; make html

test:
	python setup.py test

unittest:
	python -m unittest

clean:
	find . -type f -name "*.pyc" -exec rm '{}' +
	find . -type d -name "__pycache__" -exec rmdir '{}' +
	rm -rf *.egg-info
	cd docs; make clean

docs: site
