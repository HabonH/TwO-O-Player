class Player 
  attr_accessor :name, :lives 

  def initialize(name)
    @name = name
    @lives = 3
  end
  
  def decrease_life
    @lives = @lives - 1
  end

  def no_life
  @lives == 0
  end

end
