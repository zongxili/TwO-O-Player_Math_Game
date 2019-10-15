class TakeTurns
  def initialize
    @flag = 1
  end

  def switch_player
    @flag *= -1
  end

  def output_question
    if @flag == 1
      puts "player 1"
      self.switch_player
    else
      puts "player 2"
      self.switch_player
    end
  end
end