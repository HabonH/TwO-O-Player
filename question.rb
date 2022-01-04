class Question 
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @total = @num1 + @num2
  end
  
  def question?(player)
    puts "#{player.name}: What is #{@num1} + #{@num2}?"
    print '> '
    response = gets.chomp.to_i
    if response == @total
      puts "#{player.name}: YES! You are correctamundo!"
    else
      puts "#{player.name}: Seriously? No!"
      player.decrease_life
    end
  end
end