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

# Boolean
- it is an object that is either **true** or **false**


# Ranges
- a range of sequential object
- there are two types of range:
    - inclusive range => 1..3
    - exclusive range => 1...3
- we can explode the range in array as well:
    - inclusive = 1..3
    - array = [*inclusive]
    - we will get [1,2,3]

# Constants
- similiar to variables, it is a reference to an object
- used for storing values that are constant
- named using all uppercase, e.g.:
    - MAX_SCORE = 100
- although constant should not be changed, but in ruby, you can change it, but will get a warning only

# Nil
- it is an object

# Control Structures

## Conditionals: if, else, elsif
- note that we need to have an end at the last
- sample if, elsif, else:
```bash
x = 15
if x <= 10
    puts "10 or below"
elsif x >= 20
    puts "20 or above"
else
    puts "Between 10 and 20"
end
```

##  Conditionals: unless
- unless boolean equals to if !boolean
- example of it would be :
```bash
unless array.empty?
    #...
end
```

## Conditionals: case
- case with booleans
- sample code:
```bash
case
when boolean
    #...
when boolean
    #...
else
    #...
end
```

- or we can use it with case with comparisons
```bash
case count
when 0
    #...
when 1
    #...
when 2..5
    #...
else
    #...
end
```

## Conditionals: Ternary Operator
- it is written in boolean ? result1 : result2
- example:
> puts count == 1 ? "person" : "people"

## Conditionals: Or operator
- x = y || z

## Conditionals: Statement Modifier
- puts "Hello" if statement
- example:


## Loops: loop

```bash
loop do
    #...
end
```

### loops control methods
- break = Terminate the whole loop
- next = Jump to next loop
- redo = Redo this loop
- retry = Start the whole loop over again

- example:
```bash
i=5
loop do
    break if i <= 0
    puts "Countdown: #{i}"
    i -= -1
end
puts "Blast off!"
```


## Loops: while, until
```bash
while boolean
    #...
end

until boolean
    #...
end

i = 5
while i > 0
    puts "Countdown: #{i}"
    i -= 1
end

puts "Blasts off!"
```

## Iterators
- to say or do again
- to apply a procedure repeatedly
- to perform code on each item in a set

### Iterators: times, upto, downto, each
> 5.times {puts "Hello"}
> 1.upto(5) {puts "Hello"}
> 5.downto(1) {puts "Hello"}
> (1..5).each {puts "Hello"}

### Iterators: Block Variables
```bash
5.downto(1) do |i|
    puts "Countdown: #{i}"
end
puts "Blasts off!"
```

### Iterators by Class
- Integers: time, upto, downto, step
- Range: each, step
- String: each_line, each_char, each_byte
- Array: each, each_index, each_with_index
- Hash: each, each_key, each_value, each_pair

### Iterators: for .. in
```bash
fruits = ["banana", "apple", "pear"]

fruits.each do |fruit|
    puts fruit.capitalize
end

for fruit in fruits
    puts fruit.capitalize
end
```

# Enumerables
- countable items:
    - Arrays
    - Hashes
    - Ranges

## Enumerable: Methods
- count
- each

## Enumerable: find method
> (1..10).find {|n| n % 3 == 0}
> (1..10).find_all {|n| n % 3 == 0}

- there is actually many methods can be exposed
    - all?
    - any?
    - none?
    - select
    - find
    - find_all
    - one?
    - delete_if
        - example: numbers.delete_if {|n| n <= 5}

## Enumerable: map method
```bash
scores = {low: 2, high: 8, avg: 6}
adjusted_scores = scores.map do |k, v|
    "#{k.capitalize}: #{v * 100}"
end
```

## Enumerable: inject/reduce method
- inject / reduce
- accumulator

```bash
numbers = [1,2,3,4]
acc = numbers.reduce(0) do |acc, current|
    acc
end
print acc
```

## Enumerable: sort method
- it makes use of comparison operator: <=>

```bash
array = [5,8,2,6,1,3]
x = array.sort {|v1, v2| v1 <=> v2}
# [1,2,3,5,6,8]

x = array.sort {|v1, v2| v2 <=> v1}
# [8,6,5,3,2,1]
```

- sort method without <=>
```bash
fruits = ['banana', 'apple', 'pear']

x = fruits.sort do |fruit1, fruit2|
    case fruit1
    when 'apple'; 1
    when 'banana'; -1
    when 'pear'; 0
    end
end
# ["banana", "pear", "apple"]
```

- we can sort hashes as well, example:
```bash
hash = {a: 4, b: 5, c: 6}
hash.sort {|p1, p2| p1[0] <=> p2[0]}
```

## Enumerable: merge method
- **used for hashes only**
- merges two hashes together
- block can provide rules to use when merging

```bash
h1 = {a: 2, b: 4, c: 5}
h2 = {a: 3, b: 3, c: 5, d: 7}

h1.merge(h2)
h1.merge(h2) {|key, old, new| new}
h1.merge(h2) {|key, old, new| old}
h1.merge(h2) {|key, old, new| old * new}
# 
```

# Define and Call Methods (we can say it is function in other languages)
- instructions to perform a specific task, packaged as unit
- can be defined once and been called multiple times
- Don't repeat yourself (DRY)

## Method names
- generally have a convention, lowercase with underscores
- first character: lowercase letter or underscore
- contains letters, digits, underscores
- last character can be also ?!=
- avoid using same names for variables and methods
- example:
```bash
def welcome
    puts "Hello world"
end

# calling the method
welcome
```

## Variable Scope
- local variables inside methods only have scope inside methods
- local variables outside methods do not have scope inside methods
- global, class, and instance variables have scope both outside and inside methods

## Arguments
- allow a method to receive values at runtime (when it is called)
- comma-seperated list of variables after the method name
- "Args"
- Order and number of arguments passed in must match definition
- example:
```bash
def volume(x,y,x)
    x * y * z
end
```
- note that argument number **must match**, bad example:
```bash
def colume(x, y, z)
    x* y * z
end

volume(2, 3)
```

## Argument Parentheses
- always optional
- methods with arguments use them
- methods without aruments do not use them
- both when defining and calling methods

## Argument default values
- default value can be any Ruby object
- required arguments listed first
- optional arguments listed last
```bash
def welcome(greeting, name, punct='!')
    greeting + ' ' + name + punct
end
puts welcome("hello", "friend")
```
- we can use options to have greater flexibility, example:
```bash
def welcome(greeting, options={})
    name = options[:name] || 'friend'
    punct = options[:punct] || '!'
    greeting + ' ' + name + punct
end
```

## Return value
- methods return the last operation's value by default
- return: return a value and exit the method
- useful in conditional statements and loops
- not necessary in last line of method

## Return multiple values
- methods can only return one value (which is one object)
- we can use an array or hash to return multiple values

# Reading files
- we can use a special command File.open()
```bash
File.open("example-file.txt", "r") do |file|
    print file
end

File.open("example-file.txt", "r") do |file|
    print file.read().include? "Jim"
end

File.open("example-file.txt", "r") do |file|
    for line in file.readlines()
        puts line
    end
end

file = File.open("example-file.txt", "r")
puts file.read
file.close()
```

# Writing files
- example:
```bash
File.open("example-file.txt", "a") do |file|
    file.write("\nOscar, Accounting")
end

File.open("index.html", "w") do |file|
    file.write("\nOscar, Accounting")
end

File.open("index.html", "r+") do |file|
    file.readline() # go to next line
    file.write("Overridden")
end
```

# Handling errors
- we can use begin rescue in ruby to handle the error of the code in ruby
```bash
lucky_nums = [1,2,3,4,5]
begin
    # lucky_nums["dog"]
    num = 10 / 0
# rescue 
#     puts "Division by zero error"
rescue ZeroDivisionError
    puts "Division by zero error"
# rescue TypeError
#     puts "Wrong Type"
# we can store the error in the variable (message)
rescue TypeError => e 
    puts e
end
```

# Classes

## Defining a Class
- A class in Ruby is defined using the class keyword followed by the class name. Class names are written in CamelCase.
```bash
class Person
  # Define attributes with accessor methods
  attr_accessor :name, :age

  # Constructor method
  def initialize(name, age)
    @name = name
    @age = age
  end

  # Instance method
  def introduce
    "Hello, my name is #{@name} and I am #{@age} years old."
  end

  # Class method
  def self.species
    "Homo sapiens"
  end
end
```

## Creating an instance of a Class
- You create an instance of a class by calling new on the class, passing any required parameters to the **initialize** method.

```bash
# Create a new Person object
person1 = Person.new("Alice", 30)

# Access and modify attributes
puts person1.name    # Output: Alice
person1.age = 31
puts person1.age     # Output: 31
```

## Calling Instance Methods
- You can call instance methods on an object using the dot notation.
```bash
# Call an instance method
puts person1.introduce  # Output: Hello, my name is Alice and I am 31 years old.
```

## Calling Class Methods
- Class methods are called on the class itself, not on an instance of the class.
```bash
# Call a class method
puts Person.species  # Output: Homo sapiens
```

## Inheritance
- Ruby supports **single inheritance**, allowing a class to **inherit from another class** using the **<** symbol.

```bash
class Employee < Person
  attr_accessor :position

  def initialize(name, age, position)
    super(name, age)  # Call the superclass's initialize method
    @position = position
  end

  def introduce
    "#{super} I work as a #{@position}."
  end
end

employee = Employee.new("Bob", 25, "Developer")
puts employee.introduce  # Output: Hello, my name is Bob and I am 25 years old. I work as a Developer.
```

## Additional Features
- **Access Control**: You can control the visibility of methods using **public**, **private**, and **protected**.
- **Modules and Mixins**: Ruby supports **mixins** through modules to share code between classes without using inheritance.

## Full Example
```bash
class Animal
  attr_accessor :name, :species

  def initialize(name, species)
    @name = name
    @species = species
  end

  def make_sound
    "Some generic sound"
  end
end

class Dog < Animal
  def initialize(name, breed)
    super(name, "Dog")
    @breed = breed
  end

  def make_sound
    "Woof! Woof!"
  end

  def fetch
    "#{@name} is fetching the ball!"
  end
end

dog = Dog.new("Rex", "Golden Retriever")
puts dog.make_sound    # Output: Woof! Woof!
puts dog.fetch         # Output: Rex is fetching the ball!
puts dog.name          # Output: Rex
puts dog.species       # Output: Dog
```

## Access Control
- Ruby provides three levels of method visibility: *public*, *private*, and *protected*. These control the accessibility of methods from outside the class.

### Public Methods
- Public methods can be called by anyone. They are the default method type in Ruby.
```bash
class Example
  def public_method
    puts "I'm a public method"
  end
end

example = Example.new
example.public_method  # Output: I'm a public method
```

### Private Methods
- Private methods cannot be called with an explicit receiver, meaning you cannot call them on an object. They are used for internal functionality within the class.
```bash
class Example
  def public_method
    private_method
  end

  private

  def private_method
    puts "I'm a private method"
  end
end

example = Example.new
example.public_method  # Output: I'm a private method
example.private_method # Error: private method `private_method' called
```

### Protected Methods
- Protected methods can be called by any instance of the class or its subclasses, but not from outside the class hierarchy.
```bash
class Example
  def call_protected(other)
    other.protected_method
  end

  protected

  def protected_method
    puts "I'm a protected method"
  end
end

example1 = Example.new
example2 = Example.new
example1.call_protected(example2)  # Output: I'm a protected method
example1.protected_method          # Error: protected method `protected_method' called
```

## Modules and Mixins
- Modules in Ruby are a way to group reusable code that can be included in classes. They provide a mechanism for sharing code between classes without using inheritance.

### Defining and Including Modules
- You define a module with the module keyword, and you can include it in a class using the include keyword.

```bash
module Greetable
  def greet
    puts "Hello!"
  end
end

class Person
  include Greetable
end

person = Person.new
person.greet  # Output: Hello!
```

### Mixins
- Mixins allow you to include methods from multiple modules into a class. This is a powerful way to share behavior.
```bash
module Walkable
  def walk
    puts "I'm walking"
  end
end

module Runnable
  def run
    puts "I'm running"
  end
  def running_fast
    puts "I'm running fast"
  end
end

class Person
  include Walkable
  include Runnable
end

person = Person.new
person.walk  # Output: I'm walking
person.run # Output: I'm running
person.running_fast   
```

## Constants and Class Variables

### Constants
- Constants in Ruby are variables that should not change. They are defined with an uppercase letter.

```bash
class Example
  MY_CONSTANT = 42
end

puts Example::MY_CONSTANT  # Output: 42
```

### Class Variables
- Class variables are shared among all instances of a class. They are defined with @@.
```bash
class Example
  @@class_variable = 0

  def increment
    @@class_variable += 1
  end

  def value
    @@class_variable
  end
end

example1 = Example.new
example2 = Example.new
example1.increment
example2.increment
puts example1.value  # Output: 2
puts example2.value  # Output: 2
```

## Singleton Methods and Classes

### Singleton Methods
- A singleton method is a method that is defined on a single object rather than on all instances of a class. This allows you to add behavior to a specific object without affecting other instances of the same class.

#### Defining Singleton Methods
- You can define a singleton method directly on an object:
```bash
obj = "hello"

def obj.shout
  puts self.upcase
end

obj.shout  # Output: HELLO

another_obj = "world"
# another_obj.shout  # This would raise an error: undefined method `shout'
```

- In this example, the shout method is only available on obj and not on another_obj or any other String object.

#### Use Cases for Singleton Methods
1. Customization for a Specific Object: When you need to add a method to a single object without affecting other instances
```bash
button = UIElement.new
def button.click
  puts "Button clicked!"
end

button.click  # Output: Button clicked!
```

2. Extending Libraries
- When you need to add methods to specific instances of classes from external libraries without modifying the original class.

3. Testing and Mocking:
- Singleton methods can be useful in tests to mock methods on specific objects
```bash
require 'minitest/autorun'

class MyTest < Minitest::Test
  def test_example
    obj = SomeClass.new
    def obj.special_method
      "mocked result"
    end
    assert_equal "mocked result", obj.special_method
  end
end
```

### Singleton Classes
- A singleton class (also known as an eigenclass or metaclass) is a **hidden class** that Ruby creates to hold the singleton methods for an object. Every object in Ruby has a singleton class, but it's typically hidden from the user.

#### Accessing Singleton Classes
- You can access the singleton class using the class << obj syntax:

```bash
obj = "hello"

class << obj
  def shout
    puts self.upcase
  end
end

obj.shout  # Output: HELLO
```

#### Use Cases for Singleton Classes
1. Adding Singleton Methods:
- Singleton classes are the mechanism Ruby uses to store singleton methods.

2. Defining Class-Level Methods:
- Singleton classes are used to define class methods
```bash
class MyClass
  class << self
    def class_method
      puts "I'm a class method"
    end
  end
end

MyClass.class_method  # Output: I'm a class method
```

3. Metaprogramming:
- Singleton classes provide a powerful way to perform metaprogramming, allowing you to dynamically define methods and behavior at runtime.

```bash
class MyClass
  def self.create_method(name)
    class << self
      define_method(name) do
        puts "Dynamic method: #{name}"
      end
    end
  end
end

MyClass.create_method(:new_method)
MyClass.new_method  # Output: Dynamic method: new_method
```

4. Module Extension:
- You can extend objects with modules to add methods to a specific object
```bash
module Greetable
  def greet
    puts "Hello!"
  end
end

person = "John"
person.extend(Greetable)
person.greet  # Output: Hello!
```