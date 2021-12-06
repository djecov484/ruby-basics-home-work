puts "Do you want to |fight| or |run|?"

input = gets.chomp #chomp trims whitespace

if input == "fight"
    puts "you are fighting"
elsif input == "run"
    puts "you are running"
    exit()
end

class Fighter 

    attr_accessor :name, :defense, :strenght, :luck, :life
    def initialize name, defense=9, strenght=10, luck=8, life=20
        @name = name
        @defense = defense
        @strenght = strenght
        @luck = luck
        @life = life

    end

   
    def attack(opp)
    hit = rand(1...20)-self.luck<0
    if hit 
        p"#{self.name} makes a hit on #{opp.name} for #{self.strenght} damage"      
        opp.life -= self.strenght
    else 
        damage = rand(1...self.strenght)-rand(opp.defense)
        damage <0 ? damage = 0 :damage = damage
        opp.life -= damage
        puts "#{self.name} did #{damage} damage to #{opp.name}"   
    end     
   
end

class Player1 < Fighter
    attr_accessor : name 
       def initialize (name)
        super(9, 10, 8, 20)
        @name = name
       end


ken = Fighter.new("Ken")
ryu = Fighter.new("Ryu")

puts ken.life
ryu.attack(ken)
puts ken.life

