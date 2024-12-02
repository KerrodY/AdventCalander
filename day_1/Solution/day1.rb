# frozen_string_literal: true

column1 = []
column2 = []
total_distance = 0

File.open('../sample_data.txt', 'r') do |file|
  file.each_line do |line|
    values = line.split
    column1 << values[0].to_i
    column2 << values[1].to_i
  end
end

column1.sort!
column2.sort!

column1.each_with_index do |value, index|
  total_distance += (value - column2[index]).abs
end

puts "Total distance: #{total_distance}"