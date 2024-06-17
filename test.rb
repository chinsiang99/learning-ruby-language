print "Hello World"
x = 1
y = x + 1
x = x + 3
puts y

x = nil

limit = x || 20

puts x

fruits = ["banana", "apple", "pear"]

fruits.each_with_index do |fruit, index|
    puts fruit.capitalize
    puts index
end

for fruit in fruits
    puts fruit.capitalize
end