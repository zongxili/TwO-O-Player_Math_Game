require_relative 'user.rb'
require_relative 'generate_questions.rb'

# initializing players 
player1 = User.new
player2 = User.new

def playerPerTurn(player1, player2, playerStr)
  playerThisRound = playerStr
  # initializing the question
  question_generator = Question.new
  fir = question_generator.fir
  sec = question_generator.sec
  total = question_generator.total
  # output the question
  puts "#{playerThisRound}: What does #{fir} plus #{sec}"
  answer = gets.chomp
  # check the answer and give out the output
  if answer.to_i == total
    puts "#{playerThisRound}: YES! You are correct."
  else
    if playerThisRound == "Player One"
      player1.lose_a_life
    else
      player2.lose_a_life
    end
    puts "#{playerThisRound}: Seriously? No!"
  end
  p1_lives = player1.check_lives
  p2_lives = player2.check_lives
  if playerThisRound == "Player One"
    # check the result
    if player1.lives <= 0
      puts "Player 2 wins with a score of #{p2_lives}"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    else
      puts "P1: #{p1_lives} vs P2: #{p2_lives}"
      puts "----- NEW TURN -----"
      playerPerTurn(player1, player2, "Player Two")
    end
  else
    if player2.lives <= 0
      puts "Player 1 wins with a score of #{p1_lives}"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    else
      puts "P1: #{p1_lives} vs P2: #{p2_lives}"
      puts "----- NEW TURN -----"
      playerPerTurn(player1, player2, "Player One")
    end
  end
end

playerPerTurn(player1, player2, "Player One")