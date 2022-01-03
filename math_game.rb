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
attr_accessor :player

def initialize(player, current_score)
  @player = player
  @current_score = 3
end
end

class Question
def question
  # deals with current player by then providing the question
end
end

class Score
def score
  # deals with user input and output
end
end

class Winner
def winner
end
end

# player is relevant to question, score and winner
# question is relevant to score
# score is relevant to winner