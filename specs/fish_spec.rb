require ("minitest/autorun")
require ("minitest/rg")
require_relative("../fish.rb")


class FishTest < Minitest::Test

def setup
  @fish = Fish.new("salmon")
end

def test_can_create_fish
  assert_equal(Fish, @fish.class)
end

def test_fish_name
  assert_equal("salmon", @fish.name)
end








end
