class Bear

attr_accessor :name, :type, :stomach

def initialize (name, type, stomach)
  @name = name
  @type = type
  @stomach = stomach
end

def stomach_count
  return @stomach.length
end

def eat_fish(fish)
  @stomach << fish
  # @river.fish_leaves_river(fish)

end

def roar
  return "Roar"
end










end
