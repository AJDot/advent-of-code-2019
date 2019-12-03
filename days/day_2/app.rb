require_relative 'day2'

int_string = File.read(File.join(File.dirname(__FILE__), 'puzzle_input.txt'), chomp: true)
app = Day2.new(int_string)
app.run_part_1(12, 2)
app.run_part_2(19690720)
puts app.result
