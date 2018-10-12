input_array = ARGV

class Plateau
  # def initialize (plateau_x,plateau_y)
  #   @plateau_x_upper_right = plateau_x
  #   @plateau_y_upper_right = plateau_y
  #
  #   def plateau_x_upper_right
  #     @plateau_x_upper_right
  #   end
  #
  #   def plateau_y_upper_right
  #     @plateau_y_upper_right
  #   end
  # end
  attr_accessor :plateau_x_upper_right
  attr_accessor :plateau_y_upper_right

end

position_plateau = Plateau.new
position_plateau.plateau_x_upper_right = input_array[0]
position_plateau.plateau_y_upper_right = input_array[1]
puts position_plateau.plateau_x_upper_right, position_plateau.plateau_y_upper_right
