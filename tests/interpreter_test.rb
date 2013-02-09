require "test/unit"
require_relative '..\interpreter'

class InterpreterTest < Test::Unit::TestCase
  def test_number
    assert_equal 1, Interpreter.new.interpret("1").value
  end
  
  def test_true
    assert_equal true, Interpreter.new.interpret("true").value
  end
  
  def test_assign
    assert_equal 2, Interpreter.new.interpret("a = 2; 3; a").value
  end
  
  def test_method
    code = <<-CODE
def boo(a):
  a

boo("yah!")
CODE
    
    assert_equal "yah!", Interpreter.new.interpret(code).value
  end
  
  def test_reopen_class
    code = <<-CODE
class Number:
  def ten:
    10

1.ten
CODE
    
    assert_equal 10, Interpreter.new.interpret(code).value
  end
  
  def test_define_class
    code = <<-CODE
class Pony:
  def awesome:
    true

Pony.new.awesome
CODE
    
    assert_equal true, Interpreter.new.interpret(code).value
  end
  
  def test_if
    code = <<-CODE
if true:
  "works!"
CODE
    
    assert_equal "works!", Interpreter.new.interpret(code).value
  end
  
  def test_interpret
    code = <<-CODE
class Awesome:
  def does_it_work:
    "yeah!"

awesome_object = Awesome.new
awesome_object.does_it_work
CODE
    
    assert_equal "yeah!", Interpreter.new.interpret(code).value
  end

  def test_math_operators
    assert_equal 3, Interpreter.new.interpret("1 + 2").value
    assert_equal 5, Interpreter.new.interpret("6 - 1").value
    assert_equal 42, Interpreter.new.interpret("6 * 7").value
    assert_equal 2, Interpreter.new.interpret("5 / 2").value
    assert_equal 6, Interpreter.new.interpret("16 % 10").value
    assert Interpreter.new.interpret("2 > 1").value
    assert !Interpreter.new.interpret("1 > 2").value
    assert Interpreter.new.interpret("1 < 2").value
    assert !Interpreter.new.interpret("2 < 1").value
    assert Interpreter.new.interpret("1 >= 1").value
    assert Interpreter.new.interpret("1 <= 1").value
    assert Interpreter.new.interpret("1 == 1").value
    assert !Interpreter.new.interpret("1 == 2").value
    assert Interpreter.new.interpret("1 != 2").value
    assert !Interpreter.new.interpret("1 != 1").value
  end

  def test_method_overriding
    code = <<-CODE
def foo():
  "no-args"

def foo(x):
  "yes-args"

foo(3)
CODE
    
    assert_equal "yes-args", Interpreter.new.interpret(code).value
  end

  def test_string_methods
    assert_equal "foobar", Interpreter.new.interpret('"foo" + "bar"').value
    assert_equal "a", Interpreter.new.interpret('"bat".charAt(1)').value
    assert_equal 4, Interpreter.new.interpret('"four".length').value
  end
end