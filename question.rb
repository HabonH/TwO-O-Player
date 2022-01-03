class Question 
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @total = @num1 + @num2
  end
  
  def question?(name)
    puts "#{name}: What is #{@num1} + #{@num2}?"
    response = gets.chomp.to_i
    if response == @total
      puts "#{name}: YES! You are correctamundo!"
      "#{player1.lives} vs #{player2.lives}"
    else
      puts "You're wrong, lose a life"
      current_player.decrease_life
      "#{player1.lives} vs #{player2.lives}"
    end
  end
end