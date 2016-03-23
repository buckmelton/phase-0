# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 5.5 hours on this challenge.

# Keep all of the logic and variables inside of the class BingoBoard. Method calls should be outside.
# Initialize a new instance of the BingoBoard using the provided board array.
# Create a method to call letters and numbers (like B43). It will need to generate a letter
# ( "B", "I", "N", "G", "O") and a number from 1 to 100.
# Create a method to check whether that column has that number in the existing bingo_board.
# If the number is in the column, replace it with an "X".
# Display the new board to the console (Make it pretty).


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Input: None.
  # Output: One of the letters b, i, n, g, or o, and a number from 1-100.
  # Steps:
  #   Generate a random first number from 0 to 4 (corresponds to letters b, i, n, g, o)
  #   Generate a random second number from 1 to 100
  #   Return letter corresponding to first number, and second number
  #

# Check the called column for the number called.
  # Input: One of the letters b, i, n, g, or o, and a number 1-100.
  # Output: Whether the letter+number combo is on the current board
  # Steps:
  #   Get the numbers corresponding to the column of the called letter
  #   If called number exists in the subarray indexed by the called letter,
  #     return true

# If the number is in the column, replace with an 'x'
  # Input: A letter representing a column, and a number
  # Output: If the number is in the given column, it will be changed to an 'x'
  # Steps:
  #   If input number exists in the given column of the board
  #     Replace the number with an 'x'

# Display a column to the console
  # Input: A column letter
  # Output: The column displayed to the console
  # Steps:
  #   Loop through each element and display to console

# Display the board to the console (prettily)
  # Input: None
  # Output: The board displayed prettily to the console
  # Steps:
  #   For each column
  #     Print letter header in a 3-space-wide column
  #     Print 1 space to separate columns
  #   Print newline
  #   For each row
  #     For each column
  #       Print number for that row and column
  #       Print column spacer
  #     Print newline

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @prng = Random.new
#     @cols = ['B','I','N','G','O']
#   end

#   # Generate a letter (B,I,N,G,O) and a number (1-100).
#   def call

#     call = []
#     call << @cols[@prng.rand(4)]
#     call << @prng.rand(99) + 1
#     return call

#   end  

#   # Check the called column for the number called.
#   def call_present?(call) 

#     return @bingo_board[@cols.index(call[0])].include?(call[1])

#   end

#   # Call contains column and number.  If the number is in the column, replace with an 'x'.
#   def mark_x(call)

#     if call_present?(call)
#       col_index = @cols.index(call[0])
#       row_index = @bingo_board[col_index].index(call[1])
#       @bingo_board[col_index][row_index] = 'x'
#     end

#   end

#   # Display a column to the console.
#   def display_col(col)

#     print "Column #{col}: "
#     @bingo_board[@cols.index(col)].each {|num| print "#{num} "}
#     puts

#   end

#   # Display the board to the console (prettily)
#   def display_board_pretty

#     # Display header letters
#     @cols.each do |header|
#       print ' ' + header + '  '
#     end
#     puts

#     # Display board numbers
#     for col_index in 0..4
#       for row_index in 0..4

#         board_num = @bingo_board[row_index][col_index]

#         # Pretty print: print filler spaces if number has fewer digits
#         if board_num.to_s.length == 1
#           print '  '
#         end
#         if board_num.to_s.length == 2
#           print ' '
#         end

#         print board_num.to_s + ' '

#       end
#       puts
#     end

#   end

# end

# Refactored Solution

class BingoBoard

  def bingo_column(range)
    col = []
    for i in 0..4

      # ensure that number is unique in column
      begin
        col[i] = @prng.rand(range.end - range.begin + 1)
      end until col.count(col[i]) < 2

    end

    # adjust column values to be in range
    col.each_with_index { |num, i| col[i] += range.begin }

    return col

  end


  def create_board

    board = []

    board << bingo_column(1..15)
    board << bingo_column(16..30)
    board << bingo_column(31..45)
    board << bingo_column(46..60)
    board << bingo_column(61..75)

    # Free space in the middle of the board.
    board[2][2] = 'x'

    return board

  end

  def initialize
    @prng = Random.new
    @cols = ['B','I','N','G','O']
    @bingo_board = create_board
  end

  # Generate a Bingo call: a letter (B,I,N,G,O) and a number (1-100).
  def call

    call = []

    # random column
    col = @prng.rand(4)

    # The letter B, I, N, G, or O needed for the call
    call << @cols[col]

    # A random number from that column
    call << (@prng.rand(15) + 1) * (col+1)

    return call

  end  

  # Check the called column for the number called.
  def call_present?(call) 

    return @bingo_board[@cols.index(call[0])].include?(call[1])

  end

  # Call contains column and number.  If the number is in the column, replace with an 'x'.
  def mark_x(call)

    if call_present?(call)
      col_index = @cols.index(call[0])
      row_index = @bingo_board[col_index].index(call[1])
      @bingo_board[col_index][row_index] = 'x'
    end

  end

  # Display a column to the console.
  def display_col(col)

    print "Column #{col}: "
    @bingo_board[@cols.index(col)].each {|num| print "#{num} "}
    puts

  end

  # Display the board to the console (prettily)
  def display_board_pretty

    # Display header letters
    @cols.each do |header|
      print ' ' + header + '  '
    end
    puts

    # Display board numbers
    for col_index in 0..4
      for row_index in 0..4

        board_num = @bingo_board[row_index][col_index]

        # Pretty print: print filler spaces if number has fewer digits
        if board_num.to_s.length == 1
          print '  '
        end
        if board_num.to_s.length == 2
          print ' '
        end

        print board_num.to_s + ' '

      end
      puts
    end

  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

# board = [[47, 44, 71, 8, 88],
#         [22, 69, 75, 65, 73],
#         [83, 85, 97, 89, 57],
#         [25, 31, 96, 68, 51],
#         [75, 70, 54, 80, 83]]

new_game = BingoBoard.new

new_game.display_board_pretty
new_game.display_col("N")
new_game.display_col("O")
puts
p call = new_game.call
puts
new_game.mark_x(call)
puts
p call = new_game.call
puts
new_game.mark_x(call)
new_game.display_board_pretty
puts
10.times do
  new_game.mark_x(new_game.call)
  new_game.display_board_pretty
  puts
end


#Reflection
=begin 

- How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

  The challenging part of pseudocoding was picking one of the many options for assumptions
  and data structures.  Even as I was pseudocoding, additional alternatives would occur to
  me and slow me down while I considered whether they would be better.

- What are the benefits of using a class for this challenge?

  Methods of the class can have unfettered access to all variables (e.g. @bingo_board) and
  other methods (e.g. call_present?) of the class, while the instance variables are hidden
  from wanton use by external nefarious forces.

- How can you access coordinates in a nested array?

  The name of the array, followed by square brackets containing the index of the
  first level of the array, followed by square brackets containing the index of the
  second level of the arrar, and so on for however many dimensions the array has.

  E.g. in the following array:

    tic_tac_toe = [
                    [' ', 'X', 'X'],
                    ['O', ' ', ' '],
                    [' ', ' ', ' ']
                  ]
  
  You can access the 'O" thusly:

    tic_tac_toe[1][0] == 'O'

- What methods did you use to access and modify the array?

  Array#index
  Array#include?
  Array#each

- Give an example of a new method you learned while reviewing the Ruby docs.
- Based on what you see in the docs, what purpose does it serve, and how is it called?

  Range#begin and Range#end.

  They serve to return the first and last values of a Range.

  Usage:
  my_range = 31..45
  => 31..45
  my_range.begin
  => 31
  my_range.end
  => 45

- How did you determine what should be an instance variable versus a local variable?

  An instance variable is typically something that is important enough that
  it will likely be accessed by multiple methods of the class, like a bingo board.
  Another candidate for an instance variable is something that's a significant
  standalone presence, e.g. a random number generator.

  A local variable is typically something that is short-lived, more throwaway,
  less significant, or will definitely only be needed inside one method.

  These guidelines aren't hard and fast, but following them typically leads
  to clearer and easier-to-maintain code.

- What do you feel is most improved in your refactored solution?

  Generating a random bingo board with proper numbers and calls.


=end
