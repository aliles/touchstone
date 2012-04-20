touchstone
==========

Skeleton template for Python projects.
Derived from my usual project structure
and `Kenneth Reitz <https://twitter.com/#!/kennethreitz>`_'s repository structure
`blog post <http://kennethreitz.com/repository-structure-and-python.html>`_.

Usage
-----

To unpack touchstone into clean repository. ::

    $ wget -O - https://github.com/aliles/touchstone/tarball/master | tar -s /aliles-touchstone-......././ -zx
    $ find . -type f -exec sec -i .bak 's/touchstone/NEWNAME/g' {} \;

This will replace all instances of ``touchstone`` with your new project name.

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
