# Explanation: Instructions class is here to provide
# instructions in the form of array_of_movements.
# These movements are given to each rover to give it
# a certain position in the plateau.

input_array = ARGV

require_relative './rovers_position'


class Instructions

 attr_accessor :array_of_movements

end

instructions = Instructions.new
