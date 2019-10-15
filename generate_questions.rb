class Question
  @maxNum = 20
  attr_accessor :fir, :sec, :total 

  def initialize
    @fir = rand (0...20)
    @sec = rand (0...20)
    @total = @fir + @sec
  end

 
  def get_fir_random_num
    @fir = rand (0...20)
  end

  def get_sec_random_num
    @sec = rand (0...20)
  end

  def answer
    @total = @fir + @sec
  end
end