# Create an if/elsif/elseconditional that prints "too long" if a string is longer than 10 characters, "just right" if it is between 5 and 10 characters (inclusive), and "too short" if it is less than 5 characters.

string = "Objective C"

if string.length > 10
    puts "too long"
elsif string.length > 5
    puts "just right"
else
    puts "too short"
end

# Create a loop that prints "1st time through", "2nd time through", ..., untilthe 10th time.

10.times do |x|
    if (x == 1)
        puts "#{x}st time through"
    end

    if (x == 2)
        puts "#{x}nd time through"
    end

    if (x == 3)
        puts "#{x}rd time through"
    end

    if (x == 4 || x == 5 || x == 6 || x == 7 || x == 8 || x == 9)
        puts "#{x}th time through"
    end
end

# Create a forloop that prints all numbers (inclusive) from 20 through 40.

for x in 20..40
    puts x
end