class Player 
  attr_reader :name, :lives 

  def initialize(name)
    @name = name
    @lives = 3
  end
  
  def decrease_life
    @lives -= 1

  end

  def no_life
  @lives == 0
  end

end
