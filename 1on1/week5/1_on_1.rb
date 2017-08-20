# Problem 1
directions = ["north","east","south","west"]
p directions[3]

# Problem 2
compass = {
  n: "north",
  e: "east",
  w: "west",
  s: "south"
}

p compass[:n]

# Problem 3
class Direction
  attr_reader :direction
  attr_reader :dir_abbr
  
  def initialize(dir_abbr, direction)
    @abbrevation = dir_abbr
    @direction = direction
  end

  def direction_name
    @dir_abbr = @direction;
    @dir_abbr
  end

end

d = Direction.new("n", "North")
p d.direction_name # returns "North"


# Problem 4

class Compass < Direction
  attr_reader :directions
  def initialize
    @directions = [
      Direction.new("n", "north"),
      Direction.new("w", "west"),
      Direction.new("e", "east"),
      Direction.new("s", "south")
    ]

  end

end

my_compass = Compass.new()
p my_compass.directions

# Problem 5



