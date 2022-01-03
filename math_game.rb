# Create a 2-Player math game where players take turns to answer simple math addition problems. 
# A new math question is generated for each turn by picking two numbers between 1 and 20. 
# The player whose turn it is is prompted the question and must answer correctly or lose a life.
# Both players start with 3 lives. 
# They lose a life if they mis-answer a question. 
# At the end of every turn, the game should output the new scores for both players
# The game when one of the players loses all their lives. 
# The game should announce who won and what the winner’s score is.

# Nouns: game, player, question, score, winner
# Roles:
# game - would be the class that encompasses everything else
# player - would be to initialize the players, ensuring there are only 2
# question - will be used to generate the numbers for each turn between 1 and 20
# score - will determine how many lives each player has, displayed after each turn
# winner - would be executed once a player has reached 0 lives and will show winner's score

class Game
  attr_reader :player1, :player2
  attr_accessor :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end
  def to_s
    "I am #{self.player1}!" + " " + "I am #{self.player2}!"
  end
  def start
    while player1.lives > 0 && player2.lives > 0 
      # continue the game
    end
  end
end

class Player
  # name, lives
  attr_reader :name, :lives 
  def initialize(name)
    @name = name
    @lives = 3
  end
  
  def decrease_life
    @lives = @lives - 1
  end
end

class Question
  def initialize(num1, num2, answer)
    @num1 = num1
    @num2 = num2
    @answer = answer
  end
  
  def question
    "What is #{self.num1} + #{self.num2}?"
    response = gets.chomp
    if response == answer
      "You're right!"
    else
      "You're wrong, lose a life"
    end
  end
end

class Score
  def win_round?
    if @current_score < 3 
      @current_score += 1
    else @current_score
    end
  end
  def lose_round?
    if @current_score == 0
      puts "Winner announcement"
    else @current_score -= 1
    end
  end
end

class Winner
  def winner
  end
end

player1, player2 = Game.new("player1", "player2")
puts player1
puts player2
question1 = Question.new(2, 4, 6)
p question1
