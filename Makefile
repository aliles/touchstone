SHELL := /bin/bash

deps:
	pip install --upgrade \
	            -r requirements/development.txt \
	            -r requirements/production.txt

sdist:
	python setup.py sdist

register:
	python setup.py register
	python setup.py sdist upload

site:
	cd docs; make html

test:
	coverage run setup.py test

unittest:
	coverage run -m unittest discover

lint:
	flake8 --exit-zero touchstone tests

coverage:
	coverage report --show-missing --include="touchstone*"

clean:
	python setup.py clean --all
	find . -type f -name "*.pyc" -exec rm '{}' +
	find . -type d -name "__pycache__" -exec rmdir '{}' +
	rm -rf *.egg-info .coverage
	cd docs; make clean

docs: site
