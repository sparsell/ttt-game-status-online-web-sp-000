# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]
# creates a new board
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

#accept a board as an argument
#return false/nil if there is no win combination present in the board
#return the winning combination indexes as an array if there is a win
def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    if (board[win_combo[0]]) == "X" && (board[win_combo[1]]) == "X" && (board[win_combo[2]]) == "X"
      return win_combo
    elsif (board[win_combo[0]]) == "O" && (board[win_combo[1]]) == "O" && (board[win_combo[2]]) == "O"
      return win_combo
    end
      false
  end
end


# return false if there is an available position
# return true if there is not
def full?(board)
  board.all? do |space_taken|
    space_taken != " "
  end
end

#returns true if the board has not been won but is full,
#false if the board is not won and the board is not full,
#false if the board is won.
def draw?(board)
  !(won?(board)) && (full?(board))
end

#returns true if the board has been won, is a draw, or is full.
def over?(board)
(won?(board)) || (draw?(board)) || (full?(board))
end

#return the token, "X" or "O" that has won the game given a winning board.
def winner(board)
  WIN_COMBINATIONS.detect do |win_combo|
    if (board[win_combo[0]]) == "X" && (board[win_combo[1]]) == "X" && (board[win_combo[2]]) == "X"
      return "X"
    elsif (board[win_combo[0]]) == "O" && (board[win_combo[1]]) == "O" && (board[win_combo[2]]) == "O"
      return "O"
    else
      nil
  end
 end
end
