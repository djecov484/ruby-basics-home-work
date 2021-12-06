## Each is th equivalent Foureach in JS

#['one', 'two', 'three', 'four']. each 
#do |item|
#  puts item
#end

## Second way 
#['one', 'two', 'three', 'four'].each {|item| puts item}

###########################
## MAP
###########################

#result = [1, 2, 3].map do |item|
    #item * 2
#end   
#p result

#########################
## BLOCKS
#########################

# def each (arr, callback)
#     for item in arr
#         callback.call(item)
#     end
# end

# printEach = Proc.new {|n| p n}

# each([1,2,3,4], printEach)

#  p (we_researched_ruby_methods)


# You can use the select method to filter even numbers in array.
p [1,2,3,4,5,6,7,8,9,10].select { |n| n.even? }
