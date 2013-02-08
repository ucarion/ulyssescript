require 'test/unit'
require_relative '..\lexer'

class LexerTest < Test::Unit::TestCase
  def test_number
    assert_equal [[:NUMBER, 1]], Lexer.new.tokenize("1")
  end
  
  def test_string
    assert_equal [[:STRING, "hi"]], Lexer.new.tokenize('"hi"')
  end
    
  def test_identifier
    assert_equal [[:IDENTIFIER, "name"]], Lexer.new.tokenize('name')
  end
  
  def test_constant
    assert_equal [[:CONSTANT, "Name"]], Lexer.new.tokenize('Name')
  end
  
  def test_operator
    assert_equal [["+", "+"]], Lexer.new.tokenize('+')
    assert_equal [["||", "||"]], Lexer.new.tokenize('||')
  end

  def test_unless
    assert_equal [[:UNLESS, "unless"], [:FALSE, "false"]], Lexer.new.tokenize('unless false')
  end
  
  def test_indent
    code = <<-CODE
if 1:
  if 2:
    print "..."
    if false:
      pass
    print "done!"
  2

print "The End"
CODE
    tokens = [
      [:IF, "if"], [:NUMBER, 1],
        [:INDENT, 2],
          [:IF, "if"], [:NUMBER, 2],
          [:INDENT, 4],
            [:IDENTIFIER, "print"], [:STRING, "..."], [:NEWLINE, "\n"],
            [:IF, "if"], [:FALSE, "false"],
            [:INDENT, 6],
              [:IDENTIFIER, "pass"],
            [:DEDENT, 4], [:NEWLINE, "\n"],
            [:IDENTIFIER, "print"], [:STRING, "done!"],
        [:DEDENT, 2], [:NEWLINE, "\n"],
        [:NUMBER, 2],
      [:DEDENT, 0], [:NEWLINE, "\n"],
      [:NEWLINE, "\n"],
      [:IDENTIFIER, "print"], [:STRING, "The End"]
    ]
    assert_equal tokens, Lexer.new.tokenize(code)
  end
end