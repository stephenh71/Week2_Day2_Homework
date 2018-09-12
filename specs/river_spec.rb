require ("minitest/autorun")
require ("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")
require_relative("../bear.rb")

class RiverTest < Minitest::Test

def setup
  @river = River.new("Amazon",[])
  @fish1 = Fish.new("salmon")
  @fish2 = Fish.new("trout")
  @fish3 = Fish.new("perch")
  @fish4 = Fish.new("bream")
end

  def test_can_create_river
    assert_equal(River, @river.class)
  end

def test_river_name
  assert_equal("Amazon", @river.name)
end

def test_count_fish_in_river
  assert_equal(0, @river.count_fish)
end

def test_fish_enters_river__4
  @river.fish_enters_river(@fish1)
  @river.fish_enters_river(@fish2)
  @river.fish_enters_river(@fish3)
  @river.fish_enters_river(@fish4)
  assert_equal(4, @river.count_fish)
end

def test_fish_leaves_river__1
  @river.fish_enters_river(@fish1)
  @river.fish_enters_river(@fish2)
  @river.fish_enters_river(@fish3)
  @river.fish_leaves_river(@fish1)
  assert_equal(2, @river.count_fish)
end









end
