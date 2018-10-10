input_array = ARGV

class Plateau
  def initialize (plateau_x,plateau_y)
    @plateau_x_upper_right = plateau_x
    @plateau_y_upper_right = plateau_y

    def plateau_x_upper_right
      @plateau_x_upper_right
    end

    def plateau_y_upper_right
      @plateau_y_upper_right
    end
  end

end

position_plateau = Plateau.new(input_array[0], input_array[1])
puts position_plateau.plateau_x_upper_right, position_plateau.plateau_y_upper_right

class Rovers_position
  def initialize (rover_x, rover_y, heading)
    @rover_x = rover_x
    @rover_y = rover_y
    @heading = heading

    def rover_x
      @rover_x
    end

    def rover_y
      @rover_y
    end

    def heading
      @heading
    end
  end
end

rovers_position = Rovers_position.new(input_array[2], input_array[3], input_array[4])
puts rovers_position.rover_x, rovers_position.rover_y, rovers_position.heading

class Instructions
  def initialize (array_of_movements)
    @array_of_movements = array_of_movements
  end

  def array_of_movements
    @array_of_movements
  end

end

instructions = Instructions.new (input_array[5..-1])
puts instructions.array_of_movements

instructions.array_of_movements.each do |current_movement|
  if  current_movement == "L"
      if  rovers_position.heading == "N"
          @heading = "W"
      elsif  rovers_position.heading == "W"
          @heading = "S"
      elsif  rovers_position.heading == "S"
          @heading = "E"
      elsif  rovers_position.heading == "E"
          @heading = "N"
        else
          @heading = "N"
      end
  elsif  current_movement == "R"
      if  rovers_position.heading == "N"
         @heading = "E"
      elsif  rovers_position.heading == "E"
         @heading = "S"
      elsif  rovers_position.heading == "S"
         @heading = "W"
      elsif  rovers_position.heading == "W"
         @heading = "N"
       else
         @heading = "N"
      end
  elsif  current_movement == "M"
    rovers_y_integer = rovers_position.rover_y.to_i
    rovers_x_integer = rovers_position.rover_x.to_i
      if  rovers_position.heading == "N"
        @rover_y = rovers_y_integer + 1
      elsif  rovers_position.heading == "S"
        @rover_y = rovers_y_integer -= 1
      elsif  rovers_position.heading == "E"
        @rover_x = rovers_x_integer += 1
      elsif  rovers_position.heading == "W"
        @rover_x = rovers_x_integer -= 1
      else
        @rover_x = 0 && @rover_y = 0
      end
 end
end

puts @rover_x, @rover_y, @heading
puts "=========="
