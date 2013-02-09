# ulyssescript #

A totally minimalist programming language I made mostly to try my hand at making a language.

ulyssescript is a ruby-based language that has basic OOP and syntax that looks a lot like Python's.

Features:
* Python-style indentation
* Basic inheritance (everything inherits from Object)
* `if`, `unless`, `while`, `until` control structures
* `Object`, `Class`, `String`, `Number`, `true` (`TrueClass`), `false` (`FalseClass`), `nil` (`NilClass`)
* Method overloading
* You can omit parentheses on methods with no arguments
* You can re-open a class, i.e. add a method to the `Object` or `TrueClass` class by doing:

```python
class Object:
  def print_twice(x):
    print(x)
    print(x)

class TrueClass:
  def to_s():
    "true"
```

Which would allow you to do

```python
s = "cuckoo! "
print_twice(s)

print(true.to_s)
```

# Examples #

Here's a basic prime-finding program in ulyssescript:

```python
i = 2
while i < 100:
  prime = true
  j = 2
  
  while j < i:
    if i % j == 0:
      prime = false
    j = j + 1
  
  if prime:
    println(i)
  
  i = i + 1
```

Or a basic greeter class:

```python
class Greeter:
  def greet():
    println("Hello, John Doe!")
  
  def greet(name):
    print("Hello, ")
    println(name)
  
  def warn(name):
    print("Danger, ")
    print(name)
    println("!")


g = Greeter.new
g.greet
g.greet("there!")
g.warn("Will Robinson")
```

Which produces:

```
Hello, John Doe!
Hello, there!
Danger, Will Robinson!
```
