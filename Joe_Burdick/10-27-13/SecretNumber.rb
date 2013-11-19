
class Game
    attr_accessor :player

    def initialize name, instruction, player
            @name = "Joe's Number Guessing Game" #Name of the game
            @instruction = "You have 3 opportunities to guess the number that I'm thinking. Enter one now."  #User instruction
            @player = player 
    end

    # def player= player_name
    #       @player = player_name
    # end


    # def player
    #       @player
    # end


    def welcome
            "Welcome to #{@name}, #{@player}! #{@instruction}"
    end
end
# require 'minitest/autorun'

# describe Game do
#   it "has a name, instruction, and a player" do
#     bopit = Game.new "Bop-it!", "A game for grabby people", "Steven"
#     bopit.welcome.must_equal "Welcome to Bop-it! Steven! A game for grabby people"
#   end

#   it "can have the player changed" do
#     bopit = Game.new "Bop-it!", "A game for grabby people", "Steven"
#     bopit.player = "Eddie"
#     bopit.player.must_equal "Eddie"
#   end
# end