require 'bigdecimal'

#########################################
# Printing to the Console
#########################################

puts("Hello World")

puts "Hello World"

p "Hello World"

#########################################
# Declaring Variables
#########################################

this_is_a_variable = 5

p this_is_a_variable

#########################################
# Data Type
#######################################

#String
puts "Ruby"
puts 'Python'

p "string" .methods 


## Concatenation
p "Hello " + "world"
hello = "Hello"
p "#{hello} World"

##Multiline
long_string = <<-EOF
sdffgg
ffffff
ccgg
gggggh
EOF

puts long_string
# Numbors
p 55
p 55.methods

#Booleans

p true
p true.methods
p 5>7
p 5<7
p 1 == 1 && 2<3


#Integera (hole number)

puts 5 / 2 #rounds
puts 122 #normal
puts 0x7a #hex value
puts 0172 #octal
puts 0b1111010 #binary
puts 23_482_345_629 #long numbers: substitute _ for ,

#Floats 
p 5.0 / 2 #force a float
p 5.fdiv 2 #float division
p 12.to_f #convert to float
p sprintf "%.4f" % (1/3.0) #format a value
p 1.2e-3 #scientific notation

# Big Decimale

puts BigDecimal("1.2") - BigDecimal("1.0")

#Rational numbers
p 2.to_r #outputs (2/1)
p Rational 0.5 #outputs (1/2)
p 2/3r #can use fraction notation
p 2/3r+1 #can combine fraction notation with other math

# nil (ruby equivalent NULL)
n = nil #same as null
puts n

p nil.methods


#########################################
# Collection
#########################################

## Arrays

my_arr = [1,2,3,4,5]
p my_arr

my_arr2 = Array(1...6)
p my_arr2

## Hash

original = {"name" => "Alex Merced", "age" => 35 }
slightly_better = {:name => "Alex Merced", :age => 35}
best = {name: "Alex Merced", age: 35}

p original["name"]
p best[:name]

## Everithing is the an Object

p true.class, false.class
p "Ruby".class
p 1.class
p 4.5.class
p 3_463_456_457.class # like 3,463,456,457
p :age.class
p [1, 2, 3].class
p({ :name => "Jane", :age => 17 }.class)


## Functions/Methods

def hello_world
    puts "Hello World"
   return 5
end

p hello_world

def hello_you(you)
    puts "Hello! #{you}" 
end

hello_you "Alex"
hello_you "Cheese"

#########################
# Control Flow
#########################

a = 5
if a > 1
	p 'greater than 1'
elsif a == 1
	p 'equals 1'
else
	p 'less than 1'
end

unless a >=1
    p "less than 1"
end    

puts 'equals 1' if a == 1
puts 'not greater than 1' unless a > 1

#########################
# Loops
#########################

## While
counter = 0
while counter < 5 do
	p counter
	counter +=1 # ++ does not exist. must do +=1 or another increment number
end

## Until

until counter == 0 do
    p counter
    counter -= 1

end    


## For loops (iterating over iterables)

for i in 0..5
    puts i
end

for i in [1,2,3,4,5]
    puts i
end





