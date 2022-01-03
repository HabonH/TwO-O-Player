# Create a 2-Player math game where players take turns to answer simple math addition problems. 
# A new math question is generated for each turn by picking two numbers between 1 and 20. 
# The player whose turn it is is prompted the question and must answer correctly or lose a life.
# Both players start with 3 lives. 
# They lose a life if they mis-answer a question. 
# At the end of every turn, the game should output the new scores for both players
# The game ends when one of the players loses all their lives. 
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

  # def to_s
  #   "I am #{player1}!" + " " + "I am #{player2}!"
  # end

  def start
    while player1.lives > 0 && player2.lives > 0 
      question = Question.new
    end
  end
end



# class Score
#   def win_round?
#     if @current_score < 3 
#       @current_score += 1
#     else @current_score
#     end
#   end
#   def lose_round?
#     if @current_score == 0
#       puts "Winner announcement"
#     else @current_score -= 1
#     end
#   end
# end

# class Winner
#   def winner
#   end
# end

player1, player2 = Game.new("player1", "player2")
# puts player1
# puts player2
question1 = Question.new
question1.question?("player1")
