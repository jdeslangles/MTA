
  # Clear the screen, and present the user with a menu
  puts `clear`
  puts "MTA 1.0"
  puts "Press enter to continue..."
  gets

  puts "What train would you like to get on:"
  puts "Line (L), line (N) or line (6) ?"
  line_on = gets.chomp.upcase

  case line_on
    when "N"
      puts "Which stop are you getting on?"
      puts "stop(1): Times Square"
      puts "stop(2): 34th"
      puts "stop(3): 28th"
      puts "stop(4): 23rd"
      puts "stop(5): Union Square"
      puts "stop(6): 8th"
      union_square_value_on = 5
      stop_on = gets.chomp.to_i

    when "L"
      puts "Which stop are you getting on?"
      puts "stop(1): 8th"
      puts "stop(2): 6th"
      puts "stop(3): Union Square"
      puts "stop(4): 3rd"
      puts "stop(5): 1st"
      union_square_value_on = 3
      stop_on = gets.chomp.to_i

    when "6"
      puts "Which stop are you getting on?"
      puts "stop(1): Grand Central"
      puts "stop(2): 33rd"
      puts "stop(3): 28th"
      puts "stop(4): 23rd"
      puts "stop(5): Union Square"
      puts "stop(6): Astor Place"
      union_square_value_on = 5
      stop_on = gets.chomp.to_i
    else puts "Invalid input"
    end

    puts "What train would you like to get off:"
    puts "Line (L), line (N) or line (6) ?"
    line_off = gets.chomp.upcase

  case line_off
  when "N"
      puts "Which stop are you getting on?"
      puts "stop(1): Times Square"
      puts "stop(2): 34th"
      puts "stop(3): 28th"
      puts "stop(4): 23rd"
      puts "stop(5): Union Square"
      puts "stop(6): 8th"
      union_square_value_off = 5
      stop_off = gets.chomp.to_i

    when "L"
      puts "Which stop are you getting on?"
      puts "stop(1): 8th"
      puts "stop(2): 6th"
      puts "stop(3): Union Square"
      puts "stop(4): 3rd"
      puts "stop(5): 1st"
      union_square_value_off = 3
      stop_off = gets.chomp.to_i

    when "6"
      puts "Which stop are you getting on?"
      puts "stop(1): Grand Central"
      puts "stop(2): 33rd"
      puts "stop(3): 28th"
      puts "stop(4): 23rd"
      puts "stop(5): Union Square"
      puts "stop(6): Astor Place"
      union_square_value_off = 5
      stop_off = gets.chomp.to_i
    else puts "Invalid input"
  end

if line_on == line_off
  stop_total = (stop_off.to_i - stop_on.to_i).abs
  puts "Your number of stops is #{stop_total}"

else
  to_union = (union_square_value_on - stop_on).abs
  from_union = (stop_off - union_square_value_off).abs
  total_journey = from_union + to_union
  puts "Your trip will have #{total_journey} stops."
end
