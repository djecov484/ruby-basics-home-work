puts "Do you want to |fight| or |run|?"

input = gets.chomp #chomp trims whitespace

if input == "fight"
    puts "you are fighting"
elsif input == "run"
    puts "you are running"
    exit()
end

class Fighter 

    attr_accessor :name, :defense, :strength, :luck, :life
    def initialize name, defense=9, strength=10, luck=8, life=20
        @name = name
        @defense = defense
        @strength = strength
        @luck = luck
        @life = life

    end

   
    def attack(opp)
        hit = rand(1...20)-self.luck<0
        if hit 
            p"#{self.name} makes a hit on #{opp.name} for #{self.strength} damage"      
            opp.life -= self.strength
        else 
            damage = rand(1...self.strength)-rand(1...opp.defense)
            damage <0 ? damage = 0 :damage = damage
            opp.life -= damage
            puts "#{self.name} did #{damage} damage to #{opp.name}"   
        end     
    end
end






# Trainig while loop

# class Dojo
#     def Dojo.strength(fighter)
#         puts "strength =" + fighter.strength.to_s
#         fighter.strength += 1
#         puts "strength =" + fighter.strength.to_s
#     end
# end

# class Dojo
#     def Dojo.defense(fighter)
#         puts "defense =" + fighter.defense.to_s
#         fighter.defense+= 3
#         puts "defense =" + fighter.defense.to_s
#     end
# end

# class Dojo
#     def Dojo.luck(fighter)
#         puts "luck =" + fighter.luck.to_s
#         fighter.luck+= 3
#         puts "luck =" + fighter.luck.to_s
#     end
# end

# class Dojo
#     def Dojo.life(fighter)
#         puts "life =" + fighter.life.to_s
#         fighter.life+= 2
#         puts "life =" + fighter.life.to_s
#     end
# end
class Dojo
    def self.lift_weights(fighter)
        fighter.strength += 1
        puts "You are feeling your strength surge"
    end

    def endurance_training(fighter)
        fighter.defense += 2
        puts "Defense"
    end    

    def coin_in_fountain(fighter)
        fighter.luck = 3
        puts "Feeling lucky"
    end    
end

ken = Fighter.new("Ken", 5,5,5,5)
ryu = Fighter.new("Ryu", 7,7,7,7)

puts ryu.strength
Dojo.lift_weights(ryu)
puts ryu.strength
#############################\
## Creating Game
############################

puts "What is your name? "
name = gets.chomp!







 Dojo.strength (ken)
 Dojo.defense(ryu)
 Dojo.luck(ken)