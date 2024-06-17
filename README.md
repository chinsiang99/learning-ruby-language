# learning-ruby-language
- this is a repo where I learn ruby language

# Online Documentation to refer

- https://ruby-lang.org
- https://ruby-doc.org

- we can use command line to get documentation as well:
> ri <ClassName>
> ri String
> ri String#upcase

# Ruby Convention
- variables are defined with lowercase with underscores:
> first_name = "Kevin"

# Objects

- Ruby is an object-oriented programming language
- No "primitives"
- Almost everything is "object"
- Objects can represent abstract class
- have attributes
- instance of class
- have behaviours

# Variables

- variables **are not** objects
- it stores a reference of an object
- once a variable is assigned an object, it works like an object

## Variable Scope Indicators

| Scope           | Indicator                                           |
|-------------------|-------------------------------------------------------|
| Global | $variable         |
| Class       | @@variable                 |
| Instance         | @variable             |
| Local         | variable             |
| Block         | variable             |

- note that class and instances are also variables, not objects !

# Numbers

- Integers
- Floating-point numbers ("floats")
- Both integer and float inherit from a same parent called Numeric, they share behaviors that are in numeric class but they have their own behavior as well

## Integer Methods
- 100.class => return Integer
- 100.next => return 100
- -100.abs => return 100
- 100.to_f will turn integer to float

## Floats
- has decimal number in it
- 100.0.to_i will turn float to integer

# Strings
- A string of characters
- letters, numbers, symbols
- spaces, tabs, line returns

## Strings: concatenation
> greeting + ' ' + target

## Strings: append
> greeting << ' '
> greeting << 'world'

## Strings: multiplication
- "Hello " * 3
- return "Hello Hello Hello "

## Some other Strings methods
- String.reverse
- String.capitalize
- String.upcase
- String.downcase
- String.length
- etc

## String escaping
- we use a backslash to escape:
> 'Let\'s escape'

## Strings: Control Characters
- \t indicates a tab
- \n indicates a new line

## Strings Interpolation
- we can do string interpolation when we use **double quote**
- example:
```bash
msg = 'I Love You'
puts "I just called to say: #{msg}."
```

# Array
- an ordered, integer-indexed collection of objects
- it can be empty
- it can have unlimited of object
- index count starts with 0

```bash
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array[2] # 3
array[-1] # 6
array[2, 4] # [3, 4, 5, 6]
array[-2, 2] # [9, 10]
array[2..3] # [3, 4]
array[1..3] # [2, 3, 4]
array[-4..-1] # [7, 8, 9, 10]
```

## Array Methods (common)
- array.length
- array.size
- array.reverse (the array itself does not change, return a new array instead)
- array.reverse! (permanently reverse itself, reverse in place)
- array.uniq (remove duplicates element/value)
- array.compact (remove any nils in the array)
- array.flatten (flatten any array in an array)
    - [1, 2, ['a', 'b'], 3] => [1, 2, 'a', 'b', 3]
- array.include?(1) (does the array include value 1)
- array.delete_at(1) (delete array on position 1)
- array.delete('c') (delete an object in the array)
- [1, 2, 3, 4].join(',') => will output "1,2,3,4"
- "1,2,3,4".split(",") => will output ['1','2','3','4']
- array.push (add item from last of the list)
- array.pop (remove item from last of the list)
- array.shift (remove item from front of the list)
- array.unshift (add item from front of the list)