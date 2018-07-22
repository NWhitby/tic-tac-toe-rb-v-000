def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

<<<<<<< HEAD
def move(board, index, current_player)
  board[index] = current_player
=======
def move(board, index, character ="X")
  board[index] = character
>>>>>>> d5a9b4a4f2ebad88a1ea9e1059b63a4e80376c17
end

def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
<<<<<<< HEAD
    move(board, index, current_player(board))
    display_board(board)
  else
    puts "Invalid input, try again."
=======
    move(board, index)
    display_board(board)
  else
>>>>>>> d5a9b4a4f2ebad88a1ea9e1059b63a4e80376c17
    turn(board)
  end
end

<<<<<<< HEAD
def play(board)
  until over?(board)
    turn(board)
  end

  if won?(board)
    player = winner(board)
    puts "Congratulations #{player}!"
  elsif draw?(board)
    puts "Cat's Game!"
  elsif !over?(board)
    play(board)
  end
end

def turn_count(board)
  counter = 0
  board.each do |turn|
    if turn == "X" || turn == "O"
      counter += 1
    else
      counter
    end
  end
  counter
end

def current_player(board)
  if turn_count(board).even?
    "X"
  elsif turn_count(board).odd?
    "O"
  end
end

=======
# Define your play method below
def play(board)
  turn = 0
  while turn < 9
    turn(board)
    turn += 1
  end
end

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
>>>>>>> d5a9b4a4f2ebad88a1ea9e1059b63a4e80376c17
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
<<<<<<< HEAD
  [6,4,2]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    index_1 = win_combination[0]
    index_2 = win_combination[1]
    index_3 = win_combination[2]

    position_1 = board[index_1]
    position_2 = board[index_2]
    position_3 = board[index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    end
  end
  return false
end

def draw?(board)
  full?(board) && !won?(board)
=======
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] &&
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board, combo[0])
  end
>>>>>>> d5a9b4a4f2ebad88a1ea9e1059b63a4e80376c17
end

def full?(board)
  board.all?{|i| i == "X" || i == "O"}
end

<<<<<<< HEAD
def over?(board)
  draw?(board) || won?(board)
end

def winner(board)
  if won?(board)
    win_combination = won?(board)
    if board[win_combination[0]] == "X"
      return "X"
    elsif board[win_combination[0]] == "O"
      return "O"
    end
=======
def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
>>>>>>> d5a9b4a4f2ebad88a1ea9e1059b63a4e80376c17
  end
end
