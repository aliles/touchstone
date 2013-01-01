touchstone
==========

Skeleton template for Python projects.
Derived from my usual project structure
and `Kenneth Reitz <https://twitter.com/#!/kennethreitz>`_'s repository structure
`blog post <http://kennethreitz.com/repository-structure-and-python.html>`_.

Features
--------

In addition to the structure outlined in Kenneth's post,
touchstone has the following features:

* Apache Software License 2.0.
* Python `Distribute <http://packages.python.org/distribute/>`_ ready.
* Single point of control for version in ``touchstone.version.py``.
* ``load_rst()`` function in ``setup.py`` to load long description from docs.
* Prepare Sphinx documentation configuration including intersphinx.
* Populated MANIFEST.in including tests and documentation in packages.
* Empty change log.

Set Up
------

To unpack touchstone into clean repository. ::

    $ wget -O - https://github.com/aliles/touchstone/tarball/master | tar -s /aliles-touchstone-......././ -zx
    $ find . -type f -exec sed -i .bak 's/touchstone/NEWNAME/g' {} \;
    $ find . -type f -exec sed -i .bak 's/TestTouchstone/TestNEWNAME/g' {} \;
    $ find . -type f -name \*.bak -exec rm {} \;
    $ for ORIG in `find . -name \*touchstone\*`; do NEW=`echo $ORIG | sed s/touchstone/NEWNAME/`; mv $ORIG $NEW; done

This will replace all instances of ``touchstone``
with your new project name.
**You also need to edit
the README.rst 
and LICENSE files.**

The ``requirements.txt`` file has been populated
with dependencies for documentation,
static type analysis
and test coverage.
To install these dependencies
execute make's ``deps`` target. ::

    $ make deps

Make Targets
------------

The makefile has the following targets:

* ``deps``, install Python dependencies using ``pip``.
* ``docs``, build package documention using ``Sphinx``.
* ``lint``, static code analysis of package using ``flake8``.
* ``dist``, build source distribution for package.
* ``tests``, run unit tests using test runner from ``setup.py``.
* ``unittest``, run unit tests using ``unittest`` module test runner.
* ``coverage``, generate coverage report from test coverage.
* ``clean``, remove all build artifacts.
