#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.9
# from Racc grammer file "".
#

require 'racc/parser.rb'

  require '.\lexer'
  require '.\nodes'

class Parser < Racc::Parser

module_eval(<<'...end grammar.y/module_eval...', 'grammar.y', 192)
  # This code will be put as-is in the Parser class.
  def parse(code, show_tokens=false)
    @tokens = Lexer.new.tokenize(code) # Tokenize the code using our lexer
    puts @tokens.inspect if show_tokens
    do_parse # Kickoff the parsing process
  end
  
  def next_token
    @tokens.shift
  end
...end grammar.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    29,    17,    30,    31,    32,    27,    28,    17,    19,    20,
    21,    22,    23,    24,    26,    96,    91,    95,    25,    53,
    35,    17,    46,    47,    44,    45,    89,    54,    98,    18,
    97,    35,    81,    16,    29,    18,    30,    31,    32,    27,
    28,    17,    19,    20,    21,    22,    23,    24,    26,    18,
    80,    81,    25,    35,    35,    46,    47,    44,    45,    40,
    41,    42,    43,    38,    39,    37,    36,    16,    29,    18,
    30,    31,    32,    27,    28,    52,    19,    20,    21,    22,
    23,    24,    26,    35,    59,    29,    25,    30,    31,    32,
    27,    28,    87,    19,    20,    21,    22,    23,    24,    26,
    33,    16,    29,    25,    30,    31,    32,    27,    28,    81,
    19,    20,    21,    22,    23,    24,    26,    61,    16,    29,
    25,    30,    31,    32,    27,    28,    81,    19,    20,    21,
    22,    23,    24,    26,   100,    16,    29,    25,    30,    31,
    32,    27,    28,   nil,    19,    20,    21,    22,    23,    24,
    26,   nil,    16,    29,    25,    30,    31,    32,    27,    28,
   nil,    19,    20,    21,    22,    23,    24,    26,   nil,    16,
    29,    25,    30,    31,    32,    27,    28,   nil,    19,    20,
    21,    22,    23,    24,    26,   nil,    16,    29,    25,    30,
    31,    32,    27,    28,   nil,    19,    20,    21,    22,    23,
    24,    26,   nil,    16,    29,    25,    30,    31,    32,    27,
    28,   nil,    19,    20,    21,    22,    23,    24,    26,   nil,
    16,    29,    25,    30,    31,    32,    27,    28,   nil,    19,
    20,    21,    22,    23,    24,    26,   nil,    16,    29,    25,
    30,    31,    32,    27,    28,   nil,    19,    20,    21,    22,
    23,    24,    26,   nil,    16,    29,    25,    30,    31,    32,
    27,    28,   nil,    19,    20,    21,    22,    23,    24,    26,
   nil,    16,    29,    25,    30,    31,    32,    27,    28,   nil,
    19,    20,    21,    22,    23,    24,    26,   nil,    16,    29,
    25,    30,    31,    32,    27,    28,   nil,    19,    20,    21,
    22,    23,    24,    26,   nil,    16,    29,    25,    30,    31,
    32,    27,    28,   nil,    19,    20,    21,    22,    23,    24,
    26,   nil,    16,    29,    25,    30,    31,    32,    27,    28,
   nil,    19,    20,    21,    22,    23,    24,    26,   nil,    16,
    29,    25,    30,    31,    32,    27,    28,   nil,    19,    20,
    21,    22,    23,    24,    26,   nil,    16,    29,    25,    30,
    31,    32,    27,    28,   nil,    19,    20,    21,    22,    23,
    24,    26,   nil,    16,    29,    25,    30,    31,    32,    27,
    28,   nil,    19,    20,    21,    22,    23,    24,    26,   nil,
    16,    29,    25,    30,    31,    32,    27,    28,   nil,    19,
    20,    21,    22,    23,    24,    26,   nil,    16,    29,    25,
    30,    31,    32,    27,    28,   nil,    19,    20,    21,    22,
    23,    24,    26,   nil,    16,    29,    25,    30,    31,    32,
    27,    28,   nil,    19,    20,    21,    22,    23,    24,    26,
   nil,    16,    29,    25,    30,    31,    32,    27,    28,   nil,
    19,    20,    21,    22,    23,    24,    26,   nil,    16,    29,
    25,    30,    31,    32,    27,    28,   nil,    19,    20,    21,
    22,    23,    24,    26,   nil,    16,    35,    25,    46,    47,
    44,    45,    40,    41,    42,    43,    38,    39,    37,    36,
   nil,   nil,    16,    74,    81,    50,    35,    49,    46,    47,
    44,    45,    40,    41,    42,    43,    38,    39,    37,    36,
    81,    89,    35,    88,    46,    47,    44,    45,    40,    41,
    42,    43,    38,    39,    37,    36,    81,   nil,    35,   nil,
    46,    47,    44,    45,    40,    41,    42,    43,    38,    39,
    37,    36,    35,   nil,    46,    47,    44,    45,    40,    41,
    42,    43,    38,    39,    37,    36,    35,   nil,    46,    47,
    44,    45,    40,    41,    42,    43,    38,    39,    37,    36,
    35,   nil,    46,    47,    44,    45,    40,    41,    42,    43,
    38,    39,    37,    36,    35,   nil,    46,    47,    44,    45,
    40,    41,    42,    43,    38,    39,    37,    36,    35,   nil,
    46,    47,    44,    45,    40,    41,    42,    43,    38,    39,
    37,    36,    35,   nil,    46,    47,    44,    45,    40,    41,
    42,    43,    38,    39,    37,    36,    35,   nil,    46,    47,
    44,    45,    40,    41,    42,    43,    38,    39,    37,    35,
   nil,    46,    47,    44,    45,    40,    41,    42,    43,    38,
    39,    35,   nil,    46,    47,    44,    45,    40,    41,    42,
    43,    35,   nil,    46,    47,    44,    45,    40,    41,    42,
    43,    35,   nil,    46,    47,    44,    45,    35,   nil,    46,
    47,    44,    45,    35,   nil,    46,    47,    44,    45,    35,
   nil,    46,    47,    35,   nil,    46,    47 ]

racc_action_check = [
     0,     2,     0,     0,     0,     0,     0,     0,     0,     0,
     0,     0,     0,     0,     0,    90,    80,    90,     0,    27,
    69,    92,    69,    69,    69,    69,    93,    28,    93,     2,
    92,    51,    53,     0,    81,     0,    81,    81,    81,    81,
    81,    81,    81,    81,    81,    81,    81,    81,    81,    92,
    53,    58,    81,    58,    73,    58,    58,    58,    58,    58,
    58,    58,    58,    58,    58,    58,    58,    81,    50,    81,
    50,    50,    50,    50,    50,    26,    50,    50,    50,    50,
    50,    50,    50,    72,    33,    89,    50,    89,    89,    89,
    89,    89,    61,    89,    89,    89,    89,    89,    89,    89,
     1,    50,    16,    89,    16,    16,    16,    16,    16,    54,
    16,    16,    16,    16,    16,    16,    16,    35,    89,    87,
    16,    87,    87,    87,    87,    87,    95,    87,    87,    87,
    87,    87,    87,    87,    96,    16,    25,    87,    25,    25,
    25,    25,    25,   nil,    25,    25,    25,    25,    25,    25,
    25,   nil,    87,    46,    25,    46,    46,    46,    46,    46,
   nil,    46,    46,    46,    46,    46,    46,    46,   nil,    25,
    47,    46,    47,    47,    47,    47,    47,   nil,    47,    47,
    47,    47,    47,    47,    47,   nil,    46,    52,    47,    52,
    52,    52,    52,    52,   nil,    52,    52,    52,    52,    52,
    52,    52,   nil,    47,    29,    52,    29,    29,    29,    29,
    29,   nil,    29,    29,    29,    29,    29,    29,    29,   nil,
    52,    30,    29,    30,    30,    30,    30,    30,   nil,    30,
    30,    30,    30,    30,    30,    30,   nil,    29,    31,    30,
    31,    31,    31,    31,    31,   nil,    31,    31,    31,    31,
    31,    31,    31,   nil,    30,    32,    31,    32,    32,    32,
    32,    32,   nil,    32,    32,    32,    32,    32,    32,    32,
   nil,    31,    45,    32,    45,    45,    45,    45,    45,   nil,
    45,    45,    45,    45,    45,    45,    45,   nil,    32,    44,
    45,    44,    44,    44,    44,    44,   nil,    44,    44,    44,
    44,    44,    44,    44,   nil,    45,    49,    44,    49,    49,
    49,    49,    49,   nil,    49,    49,    49,    49,    49,    49,
    49,   nil,    44,    36,    49,    36,    36,    36,    36,    36,
   nil,    36,    36,    36,    36,    36,    36,    36,   nil,    49,
    37,    36,    37,    37,    37,    37,    37,   nil,    37,    37,
    37,    37,    37,    37,    37,   nil,    36,    38,    37,    38,
    38,    38,    38,    38,   nil,    38,    38,    38,    38,    38,
    38,    38,   nil,    37,    39,    38,    39,    39,    39,    39,
    39,   nil,    39,    39,    39,    39,    39,    39,    39,   nil,
    38,    40,    39,    40,    40,    40,    40,    40,   nil,    40,
    40,    40,    40,    40,    40,    40,   nil,    39,    41,    40,
    41,    41,    41,    41,    41,   nil,    41,    41,    41,    41,
    41,    41,    41,   nil,    40,    42,    41,    42,    42,    42,
    42,    42,   nil,    42,    42,    42,    42,    42,    42,    42,
   nil,    41,    43,    42,    43,    43,    43,    43,    43,   nil,
    43,    43,    43,    43,    43,    43,    43,   nil,    42,    34,
    43,    34,    34,    34,    34,    34,   nil,    34,    34,    34,
    34,    34,    34,    34,   nil,    43,    48,    34,    48,    48,
    48,    48,    48,    48,    48,    48,    48,    48,    48,    48,
   nil,   nil,    34,    48,    55,    24,    55,    24,    55,    55,
    55,    55,    55,    55,    55,    55,    55,    55,    55,    55,
    56,    75,    56,    75,    56,    56,    56,    56,    56,    56,
    56,    56,    56,    56,    56,    56,    57,   nil,    57,   nil,
    57,    57,    57,    57,    57,    57,    57,    57,    57,    57,
    57,    57,    76,   nil,    76,    76,    76,    76,    76,    76,
    76,    76,    76,    76,    76,    76,    94,   nil,    94,    94,
    94,    94,    94,    94,    94,    94,    94,    94,    94,    94,
    77,   nil,    77,    77,    77,    77,    77,    77,    77,    77,
    77,    77,    77,    77,    78,   nil,    78,    78,    78,    78,
    78,    78,    78,    78,    78,    78,    78,    78,     3,   nil,
     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,
     3,     3,    60,   nil,    60,    60,    60,    60,    60,    60,
    60,    60,    60,    60,    60,    60,    62,   nil,    62,    62,
    62,    62,    62,    62,    62,    62,    62,    62,    62,    63,
   nil,    63,    63,    63,    63,    63,    63,    63,    63,    63,
    63,    65,   nil,    65,    65,    65,    65,    65,    65,    65,
    65,    64,   nil,    64,    64,    64,    64,    64,    64,    64,
    64,    67,   nil,    67,    67,    67,    67,    66,   nil,    66,
    66,    66,    66,    68,   nil,    68,    68,    68,    68,    70,
   nil,    70,    70,    71,   nil,    71,    71 ]

racc_action_pointer = [
    -2,   100,    -8,   579,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   100,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   462,   134,    42,     4,    11,   202,
   219,   236,   253,    84,   457,   102,   321,   338,   355,   372,
   389,   406,   423,   440,   287,   270,   151,   168,   457,   304,
    66,    12,   185,    15,    92,   477,   493,   509,    34,   nil,
   593,    57,   607,   620,   642,   632,   658,   652,   664,     1,
   670,   674,    64,    35,   nil,   477,   523,   551,   565,   nil,
     1,    32,   nil,   nil,   nil,   nil,   nil,   117,   nil,    83,
   -19,   nil,    12,    -8,   537,   109,   119,   nil,   nil,   nil,
   nil ]

racc_action_default = [
    -1,   -60,    -2,    -3,    -6,    -7,    -8,    -9,   -10,   -11,
   -12,   -13,   -14,   -15,   -16,   -17,   -60,   -19,   -20,   -21,
   -22,   -23,   -24,   -25,   -26,   -60,   -46,   -60,   -60,   -60,
   -60,   -60,   -60,   -60,    -5,   -60,   -60,   -60,   -60,   -60,
   -60,   -60,   -60,   -60,   -60,   -60,   -60,   -60,   -60,   -30,
   -60,   -45,   -60,   -60,   -60,   -60,   -60,   -60,   -60,   101,
    -4,   -28,   -33,   -34,   -35,   -36,   -37,   -38,   -39,   -40,
   -41,   -42,   -43,   -44,   -18,   -60,   -31,   -47,   -48,   -49,
   -51,   -60,   -54,   -55,   -56,   -57,   -58,   -30,   -27,   -60,
   -60,   -52,   -60,   -60,   -32,   -60,   -60,   -59,   -29,   -50,
   -53 ]

racc_goto_table = [
    34,     2,    48,    79,    82,    83,    84,    85,    86,    75,
     1,    51,    90,   nil,   nil,    55,    56,    57,    58,   nil,
    60,   nil,    62,    63,    64,    65,    66,    67,    68,    69,
    70,    71,    72,    73,   nil,    76,    77,   nil,    78,   nil,
   nil,   nil,   nil,   nil,   nil,    99,   nil,    93,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    76,   nil,    94,   nil,   nil,   nil,   nil,
   nil,   nil,    92,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
    34 ]

racc_goto_check = [
     4,     2,     3,    17,    17,    17,    17,    17,    17,    16,
     1,     3,    18,   nil,   nil,     3,     3,     3,     3,   nil,
     3,   nil,     3,     3,     3,     3,     3,     3,     3,     3,
     3,     3,     3,     3,   nil,     3,     3,   nil,     3,   nil,
   nil,   nil,   nil,   nil,   nil,    17,   nil,    16,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,     3,   nil,     3,   nil,   nil,   nil,   nil,
   nil,   nil,     2,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
     4 ]

racc_goto_pointer = [
   nil,    10,     1,   -14,    -2,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   -40,   -50,   -68 ]

racc_goto_default = [
   nil,   nil,   nil,     3,     4,     5,     6,     7,     8,     9,
    10,    11,    12,    13,    14,    15,   nil,   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 39, :_reduce_1,
  1, 39, :_reduce_2,
  1, 40, :_reduce_3,
  3, 40, :_reduce_4,
  2, 40, :_reduce_5,
  1, 40, :_reduce_6,
  1, 41, :_reduce_none,
  1, 41, :_reduce_none,
  1, 41, :_reduce_none,
  1, 41, :_reduce_none,
  1, 41, :_reduce_none,
  1, 41, :_reduce_none,
  1, 41, :_reduce_none,
  1, 41, :_reduce_none,
  1, 41, :_reduce_none,
  1, 41, :_reduce_none,
  1, 41, :_reduce_none,
  3, 41, :_reduce_18,
  1, 42, :_reduce_none,
  1, 42, :_reduce_none,
  1, 43, :_reduce_21,
  1, 43, :_reduce_22,
  1, 43, :_reduce_23,
  1, 43, :_reduce_24,
  1, 43, :_reduce_25,
  1, 44, :_reduce_26,
  4, 44, :_reduce_27,
  3, 44, :_reduce_28,
  6, 44, :_reduce_29,
  0, 54, :_reduce_30,
  1, 54, :_reduce_31,
  3, 54, :_reduce_32,
  3, 45, :_reduce_33,
  3, 45, :_reduce_34,
  3, 45, :_reduce_35,
  3, 45, :_reduce_36,
  3, 45, :_reduce_37,
  3, 45, :_reduce_38,
  3, 45, :_reduce_39,
  3, 45, :_reduce_40,
  3, 45, :_reduce_41,
  3, 45, :_reduce_42,
  3, 45, :_reduce_43,
  3, 45, :_reduce_44,
  2, 45, :_reduce_45,
  1, 46, :_reduce_46,
  3, 47, :_reduce_47,
  3, 47, :_reduce_48,
  3, 48, :_reduce_49,
  6, 48, :_reduce_50,
  0, 56, :_reduce_51,
  1, 56, :_reduce_52,
  3, 56, :_reduce_53,
  3, 49, :_reduce_54,
  3, 50, :_reduce_55,
  3, 51, :_reduce_56,
  3, 52, :_reduce_57,
  3, 53, :_reduce_58,
  3, 55, :_reduce_59 ]

racc_reduce_n = 60

racc_shift_n = 101

racc_token_table = {
  false => 0,
  :error => 1,
  :IF => 2,
  :ELSE => 3,
  :UNLESS => 4,
  :WHILE => 5,
  :UNTIL => 6,
  :DEF => 7,
  :CLASS => 8,
  :NEWLINE => 9,
  :NUMBER => 10,
  :STRING => 11,
  :TRUE => 12,
  :FALSE => 13,
  :NIL => 14,
  :IDENTIFIER => 15,
  :CONSTANT => 16,
  :INDENT => 17,
  :DEDENT => 18,
  "." => 19,
  "!" => 20,
  "*" => 21,
  "/" => 22,
  "+" => 23,
  "-" => 24,
  ">" => 25,
  ">=" => 26,
  "<" => 27,
  "<=" => 28,
  "==" => 29,
  "!=" => 30,
  "&&" => 31,
  "||" => 32,
  "=" => 33,
  "," => 34,
  "(" => 35,
  ")" => 36,
  ";" => 37 }

racc_nt_base = 38

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "IF",
  "ELSE",
  "UNLESS",
  "WHILE",
  "UNTIL",
  "DEF",
  "CLASS",
  "NEWLINE",
  "NUMBER",
  "STRING",
  "TRUE",
  "FALSE",
  "NIL",
  "IDENTIFIER",
  "CONSTANT",
  "INDENT",
  "DEDENT",
  "\".\"",
  "\"!\"",
  "\"*\"",
  "\"/\"",
  "\"+\"",
  "\"-\"",
  "\">\"",
  "\">=\"",
  "\"<\"",
  "\"<=\"",
  "\"==\"",
  "\"!=\"",
  "\"&&\"",
  "\"||\"",
  "\"=\"",
  "\",\"",
  "\"(\"",
  "\")\"",
  "\";\"",
  "$start",
  "Root",
  "Expressions",
  "Expression",
  "Terminator",
  "Literal",
  "Call",
  "Operator",
  "Constant",
  "Assign",
  "Def",
  "Class",
  "If",
  "Unless",
  "While",
  "Until",
  "ArgList",
  "Block",
  "ParamList" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'grammar.y', 47)
  def _reduce_1(val, _values, result)
     result = Nodes.new([]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 48)
  def _reduce_2(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 53)
  def _reduce_3(val, _values, result)
     result = Nodes.new(val) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 54)
  def _reduce_4(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 56)
  def _reduce_5(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 57)
  def _reduce_6(val, _values, result)
     result = Nodes.new([]) 
    result
  end
.,.,

# reduce 7 omitted

# reduce 8 omitted

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

# reduce 13 omitted

# reduce 14 omitted

# reduce 15 omitted

# reduce 16 omitted

# reduce 17 omitted

module_eval(<<'.,.,', 'grammar.y', 73)
  def _reduce_18(val, _values, result)
     result = val[1] 
    result
  end
.,.,

# reduce 19 omitted

# reduce 20 omitted

module_eval(<<'.,.,', 'grammar.y', 84)
  def _reduce_21(val, _values, result)
     result = NumberNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 85)
  def _reduce_22(val, _values, result)
     result = StringNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 86)
  def _reduce_23(val, _values, result)
     result = TrueNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 87)
  def _reduce_24(val, _values, result)
     result = FalseNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 88)
  def _reduce_25(val, _values, result)
     result = NilNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 94)
  def _reduce_26(val, _values, result)
     result = CallNode.new(nil, val[0], []) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 96)
  def _reduce_27(val, _values, result)
     result = CallNode.new(nil, val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 98)
  def _reduce_28(val, _values, result)
     result = CallNode.new(val[0], val[2], []) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 101)
  def _reduce_29(val, _values, result)
     result = CallNode.new(val[0], val[2], val[4]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 105)
  def _reduce_30(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 106)
  def _reduce_31(val, _values, result)
     result = val 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 107)
  def _reduce_32(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 112)
  def _reduce_33(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 113)
  def _reduce_34(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 114)
  def _reduce_35(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 115)
  def _reduce_36(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 116)
  def _reduce_37(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 117)
  def _reduce_38(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 118)
  def _reduce_39(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 119)
  def _reduce_40(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 120)
  def _reduce_41(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 121)
  def _reduce_42(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 122)
  def _reduce_43(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 123)
  def _reduce_44(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 124)
  def _reduce_45(val, _values, result)
     result = CallNode.new(val[1], val[0], []) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 128)
  def _reduce_46(val, _values, result)
     result = GetConstantNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 133)
  def _reduce_47(val, _values, result)
     result = SetLocalNode.new(val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 134)
  def _reduce_48(val, _values, result)
     result = SetConstantNode.new(val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 139)
  def _reduce_49(val, _values, result)
     result = DefNode.new(val[1], [], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 141)
  def _reduce_50(val, _values, result)
     result = DefNode.new(val[1], val[3], val[5]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 145)
  def _reduce_51(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 146)
  def _reduce_52(val, _values, result)
     result = val 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 147)
  def _reduce_53(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 152)
  def _reduce_54(val, _values, result)
     result = ClassNode.new(val[1], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 157)
  def _reduce_55(val, _values, result)
     result = IfNode.new(val[1], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 162)
  def _reduce_56(val, _values, result)
     result = UnlessNode.new(val[1], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 167)
  def _reduce_57(val, _values, result)
     result = WhileNode.new(val[1], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 172)
  def _reduce_58(val, _values, result)
     result = UntilNode.new(val[1], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 178)
  def _reduce_59(val, _values, result)
     result = val[1] 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end   # class Parser
