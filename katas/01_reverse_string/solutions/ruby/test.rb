require 'test/unit'
require_relative './index'

class MyTests < Test::Unit::TestCase
  def test_function_exists
    assert(defined?(:reverse), 'Reverse function must exists')
  end

  def test_reverses_a_string
    reversed_string = reverse('abcd')
    assert(reversed_string == 'dcba', 'Reverse reverses a string')
  end

  def test_reverses_a_reversed_string
    reversed_string = reverse('  abcd')
    assert(reversed_string == 'dcba  ', 'Reverse reverses a string')
  end
end

