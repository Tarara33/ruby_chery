require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    assert_equal 'RUBY', 'ruby'.upcase
  end

  def test_sample1
    assert_equal 'Ruby', 'ruby'.upcase
  end
end