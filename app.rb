require 'pry'
require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

binding.pry

#Orchestrons un combat

def perform
	player1 = Player.new("Josiane")
	player2 = Player.new("José")


#boucle pour répéter le combat jusquà la mort
	while player2.life_points > 0 && player1.life_points > 0 do
		player1.show_state
		player2.show_state
		puts "Fight :"
		player1.attacks(player2)
		player2.attacks(player1) if player2.life_points > 0
	end
end
perform
