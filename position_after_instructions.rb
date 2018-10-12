require_relative './rovers_position'
require_relative './instructions'
input_array = ARGV

instructions = Instructions.new
instructions.array_of_movements = input_array[5..-1]
puts instructions.array_of_movements

instructions.array_of_movements.each do |current_movement|
  if  current_movement == "L"
      instructions.left
  elsif  current_movement == "R"
      instructions.right
  elsif  current_movement == "M"
      instructions.move
  end
end

puts @rover_x, @rover_y, @heading
puts "=========="
