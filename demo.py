# import pytest

import unittest


if __name__ == "__main__":
  unittest.main()

class DemoTest(unittest.TestCase):

  def test_success1(self):
    self.assertTrue(True)

  def test_failure1(self):
    self.assertTrue(False)

