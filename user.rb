class User
attr_accessor :lives
  def initialize
    @lives = 3
  end

  def lose_a_life
    @lives -= 1
  end

  def check_lives
    "#{@lives} / 3"
  end

  def check_game_over
    if  @lives <= 0
      false
    else 
      true
    end
  end
end