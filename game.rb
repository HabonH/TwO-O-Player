class Game
  attr_reader :player1, :player2
  attr_accessor :current_player

  def initialize(name)
    @name = name
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end

  def start
    current_player = player1
    while player1.lives > 0 && player2.lives > 0 
      question = Question.new
      question.question?(current_player)
      lives_status
      if current_player == @player1
        puts "-----NEW TURN-----"
        current_player = @player2
      else
        puts "-----NEW TURN-----"
        current_player = @player1
      end
    end
    winner(current_player)
  end

  def lives_status
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  end

  def winner(player)
    puts "#{player.name} wins with a score of #{player.lives}/3"
    puts "-----GAME OVER-----"
    puts "Good bye!"
  end

end