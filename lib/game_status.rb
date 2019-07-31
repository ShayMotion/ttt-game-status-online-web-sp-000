# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
    #check for player 1 win
    if check_win_combination?(board, 'X', win_combo)
      return win_combo
      #check for player 2 win
    elsif check_win_combination?(board, 'O', win_combo)
      return win_combo
    else
      return false
    end
  end
end