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

# Hash
- an unordered, object-indexed collection of objects (key-value pairs)
- example:
```bash
car = {
    'brand' => 'Ford',
    'model' => 'Mustang',
    'color' => 'Blue',
    'interior_color' => 'Purple'
}
```

## Hash methods
- car.keys (return an array of all the keys)
- car.values (return an array of all the values)
- car.size (return the size of it)
- car.to_a (return an array of the hash) => [['brand', 'Ford'], ['model', 'Mustang'], ...]

# Symbols
- Symbols are like strings but cannot be edited
- begins with colon
- not delimited by quotes
- lowercase, no spaces, underscore
- example:
    - :first_name
- it is kind of a label, we use it in hashes for the key
- example:
```bash
person = {
    :first_name = 'Benjamin',
    :last_name = 'Chin Siang'
}

person[:first_name]
```
- there will be a question here, why we use symbols instead of strings as keys in hashes?
- below is the reason why:

Using symbols instead of strings as keys in hashes in Ruby has several advantages. Here are the main reasons why symbols are often preferred:

1. **Immutability**
**Symbols**: Symbols are *immutable*, meaning once they are created, they cannot be changed. This immutability makes them more efficient in terms of memory usage and performance, especially when used as hash keys.
**Strings**: Strings are *mutable*, so each time you use a string as a key, Ruby **creates a new object in memory**.

2. **Memory Efficiency**
**Symbols**: Each *unique* symbol is **stored in memory only once**, regardless of how many times it is used. This means using symbols can save memory when the same key is used repeatedly in a hash.
**Strings**: Each string, even if it has the same content, is stored as a separate object in memory unless explicitly frozen.

3. **Performance**
**Symbols**: Due to their immutability and single storage in memory, symbols are **faster for lookups** when used as hash keys.
**Strings**: Since strings can be modified and each instance is a separate object, hash lookups with string keys can be **slower**.

- there is another way to declare symbols in hashes:
```bash
scores = {
    low: 2,
    high: 8,
    average: 6
}
# it is equivalent to 
scores = {
    :low => 2,
    :high => 8,
    :average => 6
}
```

- note that we cannot use integers as keys for symbols, e.g.:
    - :100 is not a valid symbol name