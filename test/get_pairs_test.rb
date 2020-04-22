require 'minitest/autorun'
require './src/get_pairs'

class GetPairsTest < Minitest::Test
  def test_correctness
    assert_equal [[3, 2], [5, 0]],
                 GetPairs.call([22, 3, 5, 0, 2, 2], 5)
    assert_equal [[-5, 10], [2, 3], [2, 3], [5, 0]],
                 GetPairs.call([-5, 33, 2, 2, 3, 5, 0, 10, 3], 5)
    assert_equal [[-5, 10], [2, 3], [2, 3], [5, 0]],
                 GetPairs.call([-5, 33, 2, 2, 3, 5, 0, 10, 3, 3, 3], 5)
    assert_equal [[5, 0], [5, 0], [5, 0]],
                 GetPairs.call([5, 5, 5, 0, 0, 0, 5], 5)

    assert_equal [[3, 3], [6, 0]],
                 GetPairs.call([3, 3, 6, 0], 6)
  end
end
