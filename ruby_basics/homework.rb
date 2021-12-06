#Print "Hello World" to the console
puts = ("Big Bad")
p "Big Bad"

#Interpolate the adjectivevariable into the Hello World string using #{}
adjective = "Big Bad"
puts "Hello  #{adjective}  World" 

#Save "Hello World" to a variable. Without changing the letters in your code manually, permanently change "Hello World" to all uppercased letters.
variable = "Hello World"
puts variable.upcase


nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0, 35, 19, 66, 3, 22, 21, 4, 4, 4, 0, 1, 2, 3, 4, 12, 15]

# Use .uniq to print the array with all duplicate entries removed
puts nums.uniq

# Next, use .push and .pop, .shift.unshift and .lengthon the array as you would with javaScript (if you need to add a number, add 5)

puts nums.push(5)
puts nums.pop
puts nums.shift (2)
puts nums.unshift(1)


# Use .include?to check if the array contains the number 8
puts nums.include?(8)

# Use .find_allto find all the numbers greater than 10
puts nums.find_all { |x| x > 10}
# use .all?to check if all the numbers are greater than 0?
puts nums.all? { |x| x >= 0}
# use any?to check if there are any numbers that are divisible by 8
puts nums.any? {|x| x / 8}

# use .count to let you know how many numbers are greater than 4
puts nums.count {|x| x > 4}
# use .each_with_index to print each item times its index
 nums.each do |item|
    puts item
 end

# .findthe number that is divisible by 7 and 5 and is greater than 0
puts nums.find{|x| x / 7 && 5 && x > 0}
# .find_indexof the number that is divisible by 5 and 7 and is greater than 0
puts nums.find_index { |x| x / 5 && 7 && x > 0}
# return the .first 3 numbers
p nums 
p nums.first(3)   


# return the .last5 numbers
puts nums.last(5)
# .group_by the modulo of 3 ( % 3)
p nums.group_by{|x| x % 3 ==0}

# use minmaxto return the smallest and largest number
p nums.minmax()

# use .reject to return all the numbers that are NOT divisible by 3
p nums.reject{|x| x % 3 ==0}

# use .select to return all the numbers divisible by 5
p nums.select{|x| x % 5 ==0}


######################################
##Color Array
####################################

colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']
## Print out a random color.
puts colors[rand(colors.count)]
## Print out the colorsarray in reverse order.
p colors.reverse
## Print out all of the colors in the array with all capital letters.
puts colors.to_s.upcase

####################################
## Methods
####################################

## Write a method named find_areathat finds the area of a rectangle when given values for width and height

def find_area height, width
    height * width
end
   p find_area 2, 4

   ##Write a method named multiply_each_by_fivethat will loop over the given numsarray below and print each number multiplied by 5

   nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0]

   def multiply_each_by_five arr
       arr.each {|x| p x * 5 }
   end
   p multiply_each_by_five nums


   ##############################
   ## Methods With a Hash
   #############################

# Hashes

book = {
  title: 'The Great Gatsby',
  author: 'F Scott Fitzgerald',
  year: 1925,
  price: 10
}

lamp = {
  type: 'reading',
  brand: 'Ikea',
  price: 25
}

table = {
  type: 'bed side',
  brand: 'Crate & Barrel',
  color: 'birch',
  price: 50
}

## Write a method named print_pricethat will take in any hash and return the price of the item.

def print_price hash
    hash[:price]
end
p print_price table

## Write a method named print_item_sumsthat will take in two hashes and will return the sum of the prices for the items in the hashes.

def print_items_sums hash1, hash3
    hash1[:price] + hash3[:price]
end   
p print_items_sums book, table

#########################
## Euler problem 1
#########################

def multiples
    (1...1000).select do |i|
      i % 3 == 0 || i % 5 == 0
    end
  end
  
  def sumMultiples(multiples)
    total = multiples.inject(&:+)
  end
  
  p sumMultiples multiples

#Write a method called check_prime?that will test whether a number is Prime. The method will return true if Prime, false if not.

def check_prime? num
    (2..Math.sqrt(num)).none? {|i| num % i == 0}
  end
  
  p check_prime? 3

#Write another method called get_primesthat will print all the Primes up to an arbitrary limit. For example, if you invoke your method with get_primes 100, it will print all the Prime numbers up to and including 100.


Prime.each(100) do |prime|
    p prime 
   end
p get_primes 100
