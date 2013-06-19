
def menu
  # Clear the screen, and present the user with a menu
  puts `clear`
  puts "MTA 1.0"
  puts "Press enter to continue..."
  gets
end

menu

LINE_L = { "Times Square": 1, "34th": 2, "28th": 3, "23rd": 4, "Union Square": 5, "8th": 6}
LINE_N = {}
LINE_6 = {}

puts "What train would you like to get on:"
puts "Line (L), line (N) or line (6) ?"
line_on = gets.chomp.upcase

puts "Which stop are you getting on?"
puts "stop(1): Times Square"
puts "stop(2): 34th"
puts "stop(3): 28th"
puts "stop(4): 23rd"
puts "stop(5): Union Square"
puts "stop(6): 8th"
stop_on = gets.chomp

puts "What train would you like to get off:"
puts "Line (L), line (N) or line (6) ?"
line_off = gets.chomp.upcase

puts "Which stop are you getting off?"
puts "stop(1): Times Square"
puts "stop(2): 34th"
puts "stop(3): 28th"
puts "stop(4): 23rd"
puts "stop(5): Union Square"
puts "stop(6): 8th"
stop_off = gets.chomp