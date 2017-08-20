require "sinatra"


class Direction
  attr_reader :direction
  attr_reader :abbreviation
  
  def initialize(dir_abbr, direction)
    @abbreviation = dir_abbr
    @direction = direction
  end

  def direction_name
    @dir_abbr = @direction;
    @dir_abbr
  end

end

class Compass
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

get "/" do
  direction = params[:direction];
  #possible values = n w s e
  my_compass = Compass.new()
  my_compass.directions.each do |x|
    if x.abbreviation == direction
      response = "The direction corresponding to #{x.abbreviation} is #{x.direction}"
      return response
    end
  end
  "test"
end



  # use direction to find within Compass.directions the matching direction
  