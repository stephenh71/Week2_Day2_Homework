require ("minitest/autorun")
require ("minitest/rg")
require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class BearTest < Minitest::Test

def setup
  @bear = Bear.new("Yogi", "Grizzly", [])
  @fish1 = Fish.new("salmon")
  @fish2 = Fish.new("trout")
  @fish3 = Fish.new("perch")
  @river = River.new("Amazon", [])
end

def test_can_create_bear
  assert_equal(Bear, @bear.class)
end

def test_bear_name
  assert_equal("Yogi", @bear.name)
end

def test_bear_type
  assert_equal("Grizzly", @bear.type)
end

def test_bear_has_empty_stomach
  assert_equal(0, @bear.stomach_count)
end

def test_bear_eats_fish__1
  @bear.eat_fish(@fish1)
  assert_equal(1,@bear.stomach_count)
end

def test_bear_eats_fish__2
  @river.fish_enters_river(@fish1)
  @river.fish_enters_river(@fish2)
  @river.fish_enters_river(@fish3)
  @bear.eat_fish(@fish1)
  @bear.eat_fish(@fish2)
  @river.fish_leaves_river(@fish1)
  @river.fish_leaves_river(@fish2)
  assert_equal(2, @bear.stomach_count)
  assert_equal(1, @river.count_fish)
end

def test_bear_roars
  assert_equal("Roar", @bear.roar)
end



end
