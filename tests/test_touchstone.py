try:
    # python 2.x
    import unittest2 as unittest
except ImportError:
    # python 3.x
    import unittest

import touchstone


class TestTouchstone(unittest.TestCase):

    def test_has_version(self):
        self.assertTrue(touchstone.__version__)
