# Explanation:Iterating through the different movements
# or instructions given to make relevant changes in the
# rovers_position which consists of rover_x coordinate,
# rover_y coordinate and heading.
# Still working on this part.
# Things I am planning to change: make more classes
# and methods to use so I can clean up the code in this file

require_relative './rovers_position'
require_relative './instructions'
input_array = ARGV

instructions = Instructions.new
rovers_position = Rovers_position.new
rovers_position.rover_x = input_array[2]
rovers_position.rover_y = input_array[3]
rovers_position.heading = input_array[4]

instructions.array_of_movements = input_array[5..-1]

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
puts "================"
