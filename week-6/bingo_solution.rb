# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 4 hours on this challenge.

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
  # Input: A column
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

class BingoBoard

  def create_board

    # B
    b = []
    for i in 0..4
      b << @prng.rand(15) + 1
    end

    # I
    eye = []
    for i in 0..4
      eye << @prng.rand(15) + 16
    end

    # N
    n = []
    for i in 0..4
      n << @prng.rand(15) + 31
    end

    # Free space in middle
    n[2] = 'x'

    # G
    g = []
    for i in 0..4
      g << @prng.rand(15) + 46
    end

    # O
    o = []
    for i in 0..4
      o << @prng.rand(15) + 61
    end

    board = [b, eye, n, g, o]

  end

  def initialize
    @prng = Random.new
    @cols = ['B','I','N','G','O']
    @bingo_board = create_board
    display_board_pretty
  end

  # Generate a letter (B,I,N,G,O) and a number (1-100).
  def call

    call = []
    call << @cols[@prng.rand(4)]
    call << @prng.rand(99) + 1
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

    col.each {|num| p num}

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

# Refactored Solution


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
# board = [[47, 44, 71, 8, 88],
#         [22, 69, 75, 65, 73],
#         [83, 85, 97, 89, 57],
#         [25, 31, 96, 68, 51],
#         [75, 70, 54, 80, 83]]

new_game = BingoBoard.new

new_game.display_board_pretty
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



- What are the benefits of using a class for this challenge?



- How can you access coordinates in a nested array?



- What methods did you use to access and modify the array?



- Give an example of a new method you learned while reviewing the Ruby docs.
- Based on what you see in the docs, what purpose does it serve, and how is it called?



- How did you determine what should be an instance variable versus a local variable?



- What do you feel is most improved in your refactored solution?


  

=end
