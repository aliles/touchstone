import unittest

import touchstone

class TestTouchstone(unittest.TestCase):

    def test_has_version(self):
        self.assertTrue(touchstone.__version__)
