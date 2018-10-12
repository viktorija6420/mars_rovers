# Explanation: This is the main file where all other files
# are required. It used to be one file only but the solution
# with multiple files and connection between them leaves
# more room for cleaner code


input_array = ARGV

require_relative './plateau'
require_relative './rovers_position'
require_relative './instructions'
require_relative './position_after_instructions'
