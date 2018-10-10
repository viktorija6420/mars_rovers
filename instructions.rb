input_array = ARGV

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
