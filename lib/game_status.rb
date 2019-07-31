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

def check_win_combination?(board, player, win_combo)
  win_combo.all? do |position|
    board[position] == player
  end
end

def full?(board)
  if board.include?(' ') || board.include?('')
    return false
else
    return true
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  end
end

def over?(board)
  puts 'is it over?'
  if won?(board) || draw?(board) || full?(board)
    return true
  else
    puts 'no keep going'
    return false
  end
end