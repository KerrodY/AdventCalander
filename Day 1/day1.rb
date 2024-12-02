# frozen_string_literal: true

column1 = []
column2 = []

File.open('your_file.txt', 'r') do |file|
  file.each_line do |line|
    values = line.split
    column1 << values[0].to_i
    column2 << values[1].to_i
  end
end

column1.sort!
column2.sort!

