def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(string)
  string.to_i - 1
  index = string.to_i-1
  end

def valid_move?(board, index)

   position_taken?(board, index) || !index.between?(0, 8) ?  false :  true
    #  return false
    #    elsif !index.between?(0, 8)
    #  return false
    #    else
    #  return true
    #  end

  if position_taken?(board, index)
      return false
        elsif !index.between?(0, 8)
      return false
        else
      return true
    end

end

def move(board, index, character = "X")
  board[index] = character
end

def position_taken?(board, index)
if board[index] == "" || board[index] == " " || board[index] == nil
    return  false
    else
      true
    end
  end

def turn(board)
  puts "Please enter 1-9:"

  input = gets
  index = input_to_index(input)

  if valid_move?(board, index)
   move(board, index)
   display_board(board)
  else
    turn(board)


   end
end

  gets input_to_index(" ")
if vaild_move?(board, index)
   gets (board, index)
else turn(board)
  puts "Please re-enter 1-9:"
end
    end

