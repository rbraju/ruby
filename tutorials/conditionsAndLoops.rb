# Conditions (if-else, switch) and Loops (whild, do while, for)

# Greatest of 3 numbers
a, b, c = 10, 25, 20
puts "a = #{a}, b = #{b}, c = #{c}"
if (a > b) then
    if (a > c) then
        puts "a is biggest"
    else
        puts "c is biggest"
    end
elsif (b > c) then
        puts "b is biggest"
else
        puts "c is biggest"
end
puts ""

# Print day of a week. Starting from Sunday
puts "Switch case"
day = 6
puts "Day = #{day}"
case day
when 1 .. 4
    puts "Weekday :("
when 5
    puts "Weekend approaching :D"
when 6..7
    puts "Woohoo! Weekend! \\o/"
else
    puts "Invalid day.."
end
puts ""

# Print numbers from 1 to 10
puts "While.."
i = 1
while (i <= 10) do
    print "#{i} "
    i += 1
end
puts "\n\n"

# Print 1 to 10 in reverse
puts "Do While.."
i = 10
loop do
    print "#{i} "
    i -= 1
    break if i < 1
end
puts "\n\n"
