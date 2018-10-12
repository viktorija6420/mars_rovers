# Explanation: This is the plateau class with two accessors,
# plateau_x_upper_right and plateau_y_upper_right. This is how
# the coordinates of the plateau are defined.

input_array = ARGV

class Plateau

  attr_accessor :plateau_x_upper_right
  attr_accessor :plateau_y_upper_right

end

position_plateau = Plateau.new
position_plateau.plateau_x_upper_right = input_array[0]
position_plateau.plateau_y_upper_right = input_array[1]
