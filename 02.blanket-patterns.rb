colors = "RRGBBYYKK"
lines = 20

count = 0
while count < lines
    start = count.modulo(colors.length) # equivalent to count % colors.length
    first_half = colors[start..-1]
    second_half = colors[0...start]
    puts first_half + second_half
    count += 1
end

puts "hello ended"

lines.times do |i|
    first = colors[0]
    rest = colors[1..-1]
    colors = rest + first
    puts colors
end

puts "hello ended"

colors = "++*~~*++*"
lines = 20

colors_array = colors.split('')
1.upto(lines) do |i|
    first = colors_array.shift
    colors_array << first
    puts colors_array.join
end