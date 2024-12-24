import pytest

import unittest

import os


if __name__ == "__main__":
  unittest.main()

class DemoTest(unittest.TestCase):

  def test_success1(self):
    self.assertTrue(True)

  def test_failure1(self):
    self.assertFalse(False)

  def test_is_env_var_set1(self):
    self.assertTrue(os.getenv("ENV_VAR_1") == "True")
