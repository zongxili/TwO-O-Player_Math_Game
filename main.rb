require_relative 'user.rb'
require_relative 'generate_questions.rb'
require_relative 'take_turns.rb'

newGame = TakeTurns.new

player1 = User.new
player2 = User.new

# puts "What does #{fir} plus #{sec}"

# puts "the answer is #{total}"


def playerOneTurn(player1, player2)
  # initializing the question
  question_generator = Question.new
  fir = question_generator.fir
  sec = question_generator.sec
  total = question_generator.total
  # output the question
  puts "What does #{fir} plus #{sec}"
  answer = gets.chomp
  # check the answer and give out the output
  if answer.to_i == total
    puts "Player 1: YES! You are correct."
  else
    player1.lose_a_life
    puts "Player 1: Seriously? No!"
  end
  p1_lives = player1.check_lives
  p2_lives = player2.check_lives
  # check the result
  if player1.lives <= 0
    puts "Player 2 wins with a score of #{p2_lives}"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  else
    puts "P1: #{p1_lives} vs P2: #{p2_lives}"
    puts "----- NEW TURN -----"
    playerTwoTurn(player1, player2)
  end
end

def playerTwoTurn(player1, player2)
  # initializing the question
  question_generator = Question.new
  fir = question_generator.fir
  sec = question_generator.sec
  total = question_generator.total
  # output the question
  puts "What does #{fir} plus #{sec}"
  answer = gets.chomp
  # check the answer and give out the output
  if answer.to_i == total
    puts "Player 2: YES! You are correct."
  else
    player2.lose_a_life
    puts "Player 2: Seriously? No!"
  end
  p1_lives = player1.check_lives
  p2_lives = player2.check_lives
  # check the result
  if player2.lives <= 0
    puts "Player 1 wins with a score of #{p1_lives}"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  else
    puts "P1: #{p1_lives} vs P2: #{p2_lives}"
    puts "----- NEW TURN -----"
    playerOneTurn(player1, player2, "player1")
  end
end


playerOneTurn(player1, player2)