input_array = ARGV

class Rovers_position
  # def initialize (rover_x, rover_y, heading)
  #   @rover_x = rover_x
  #   @rover_y = rover_y
  #   @heading = heading
  #
  #   def rover_x
  #     @rover_x
  #   end
  #
  #   def rover_y
  #     @rover_y
  #   end
  #
  #   def heading
  #     @heading
  #   end
  # end
  attr_accessor :rover_x
  attr_accessor :rover_y
  attr_accessor :heading

end

rovers_position = Rovers_position.new
rovers_position.rover_x = input_array[2]
rovers_position.rover_y = input_array[3]
rovers_position.heading = input_array[4]
# puts rovers_position.rover_x, rovers_position.rover_y, rovers_position.heading
