#
# DO NOT MODIFY!!!!
# This file is automatically generated by racc 1.4.4
# from racc grammer file "iuparser.ry".
#

require 'racc/parser'


class IupacParser < Racc::Parser

module_eval <<'..end iuparser.ry modeval..id57c30dc50e', 'iuparser.ry', 16

def next_token
  @q.shift
end

def parse( line )
  line.downcase!
  @q = []
  
  until line.empty? do
    case line
    when /\A(hex|prop|meth|non|but|dec)/
      @q.push([:SKELETON, $&])
    when /\A(ane)/
      @q.push([:POSTFIX, $&])
    when /\Ayl/
      @q.push([:YL, 'yl'])
    when /\A(di|tri)/
      @q.push([:GREEK_NUM, $&])
    when /\A\d+/
      @q.push([:NUMBER, $&.to_i])
    when /\A-/
      @q.push([:HYPHEN, '-'])
    when /\A,/
      @q.push([:COMMA, ','])
    when /\A[()]/
      @q.push([:ROUND_B, $&])
    end
    line = $'
  end
  @q.push([:EOL, nil])
  do_parse
end

# class IupacParser
# rule
#        iupac : name EOF
#                  {
#                    puts 'The END'
#                  }
#         name : SKELETON POSTFIX
#                  {
#                    p val
#                    result = val
#                  }
# end

# ---- inner

# def next_token
#   @q.shift
# end

# def parse( line )
#   @q = []
  
# #  line.strip
#   until line.empty? do
#     case line
#     when /hex/# $reg_a_1_1
#       @q.push [:SKELETON, $&]
#     when /ane/# $reg_postfix
#       @q.push [:POSTFIX, $&]
#     when /\A\d+/
#       @q.push [:NUMBER, $&.to_i ]
#     when /\A./
#       @q.push [$&, $&]
#     else
#       raise RuntimeError, 'must not happen'
#     end
#     line = $'
#   end
#   @q.push [ :EOL, nil ]
#   p @q
#   do_parse
# end

..end iuparser.ry modeval..id57c30dc50e

##### racc 1.4.4 generates ###

racc_reduce_table = [
 0, 0, :racc_error,
 4, 11, :_reduce_none,
 0, 12, :_reduce_none,
 3, 12, :_reduce_none,
 2, 12, :_reduce_none,
 3, 13, :_reduce_none,
 1, 13, :_reduce_none,
 2, 15, :_reduce_none,
 3, 15, :_reduce_none,
 1, 14, :_reduce_none,
 3, 14, :_reduce_none ]

racc_reduce_n = 11

racc_shift_n = 23

racc_action_table = [
     5,    18,    16,     8,    16,     9,    10,     9,    10,     9,
    14,    11,    12,    19,    15,    13,     3,    21,    13,    22 ]

racc_action_check = [
     2,     9,     8,     2,    14,     2,     2,     8,     8,    14,
     6,     3,     5,    12,     6,     5,     1,    15,    16,    18 ]

racc_action_pointer = [
   nil,    16,    -2,    11,   nil,     9,     5,   nil,     0,    -1,
   nil,   nil,     9,   nil,     2,     9,    12,   nil,    13,   nil,
   nil,   nil,   nil ]

racc_action_default = [
    -2,   -11,   -11,   -11,    -4,   -11,   -11,    -6,   -11,   -11,
    -9,    23,   -11,    -7,   -11,   -11,   -11,    -3,   -11,    -1,
    -5,   -10,    -8 ]

racc_goto_table = [
     4,     1,     2,    20,   nil,   nil,    17 ]

racc_goto_check = [
     3,     1,     2,     5,   nil,   nil,     3 ]

racc_goto_pointer = [
   nil,     1,     2,    -2,   nil,   -11 ]

racc_goto_default = [
   nil,   nil,   nil,   nil,     6,     7 ]

racc_token_table = {
 false => 0,
 Object.new => 1,
 :SKELETON => 2,
 :POSTFIX => 3,
 :EOL => 4,
 :HYPHEN => 5,
 :YL => 6,
 :GREEK_NUM => 7,
 :NUMBER => 8,
 :COMMA => 9 }

racc_use_result_var = true

racc_nt_base = 10

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
'$end',
'error',
'SKELETON',
'POSTFIX',
'EOL',
'HYPHEN',
'YL',
'GREEK_NUM',
'NUMBER',
'COMMA',
'$start',
'name',
'prefix',
'num_subs',
'nums',
'substituent']

Racc_debug_parser = false

##### racc system variables end #####

 # reduce 0 omitted

 # reduce 1 omitted

 # reduce 2 omitted

 # reduce 3 omitted

 # reduce 4 omitted

 # reduce 5 omitted

 # reduce 6 omitted

 # reduce 7 omitted

 # reduce 8 omitted

 # reduce 9 omitted

 # reduce 10 omitted

 def _reduce_none( val, _values, result )
  result
 end

end   # class IupacParser


# parser = IupacParser.new

# parser.parse("hexane")
