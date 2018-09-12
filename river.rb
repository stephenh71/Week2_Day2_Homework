class River

attr_accessor :name ,:fish_vol

def initialize (name, fish_vol)
  @name = name
  @fish_vol = fish_vol
end

def count_fish
  return fish_vol.length
end

def fish_enters_river(fish)
  fish_vol << fish
end

def fish_leaves_river(fish)
  index = @fish_vol.index(fish)
  @fish_vol.slice!(index,1)
end










end
