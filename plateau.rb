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
