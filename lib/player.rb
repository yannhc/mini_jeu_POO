# Que faut-il pour faire un combat ? Moi j'ai en tête qu'il faut a minima :
# - 2 joueurs ;
# - Que chaque joueur ait un niveau de vie donné ;
# - Que ce niveau de vie baisse à chaque attaque subie ;
# - Si la vie atteint zéro, le personnage est mort.

class Player
    #attributes
    attr_accessor :name, :life_points
    
    #nom du joueur et points de vie de départ
    def initialize (name)
        @name = name
        @life_points = 10
    end

    #Etat du joueur
    def show_state
        puts "#{@name} a #{@life_points} de vie"
    end

    #Subir une attaque (enlève des points de vie)
    def gets_damage (amount)
		@life_points = @life_points - amount
		if @life_points <= 0  
        puts "le joueur #{@name} a été tué !" 
	    end
    end

    #Attaquer
    def attacks (player2)
        puts "le joueur #{@name} attaque le joueur #{player2.name}"
        dg = compute_damage
        puts "il inflige #{dg} de points de dommage"
		player2.gets_damage(dg)
    end

    def compute_damage
        return rand(1..6)
    end
end

# C'est bon, on a tous les ingrédients pour que nos joueurs se trucident bien comme il faut ! Les joueurs peuvent attaquer, subir des dégâts et on peut donner des infos sur le terminal via plein de puts. Il ne nous reste qu'à mettre en place notre premier combat.