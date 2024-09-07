class Pet
  attr_reader :type, :name

  def initialize(type, name)
    @type = type
    @name = name
  end

  def to_s 
    "a #{type} named #{name}"
  end

end

class Owner 
  attr_reader :name, :pets 

  def initialize(name)
    @name =name
    @pets = []
  end

  def add_pet(pet)
    @pets << pet
  end

  def number_of_pets
    pets.size
  end

end

class Shelter

  def initialize
    @owners = {}
  end

  def adopt(owner,pet)
    @owners[owner.name] = owner.pets unless @owners.keys.include?(owner)
    owner.add_pet(pet)
  end


  def print_adoptions
    @owners.each_pair do |name, owner|
      puts ""
      if name != 'Animal Shelter'
        puts "#{name} has adopted the following pets:"
      else 
        puts "The #{name} has the following unadopted pets:"
      end
      owner.each do |pet|
        puts "a #{pet.type} named #{pet.name}"
      end
    end
    puts ""
  end

end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

asta = Pet.new('dog', 'Asta')
laddie =Pet.new('dog', 'Laddie')
fluppy = Pet.new('cat', "Fluppy")
kat = Pet.new('cat', 'Kat')
ben = Pet.new('cat', 'Ben')
chatterbox = Pet.new('parakeet', 'Chatterbox')
bluebell = Pet.new('parakeet', 'Bluebell')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')
shelter_own = Owner.new("Animal Shelter")

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.adopt(shelter_own,asta)
shelter.adopt(shelter_own,laddie)
shelter.adopt(shelter_own,fluppy)
shelter.adopt(shelter_own,kat)
shelter.adopt(shelter_own,ben)
shelter.adopt(shelter_own,chatterbox)
shelter.adopt(shelter_own,bluebell)

shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
puts "#{shelter_own.name} has #{shelter_own.number_of_pets} unadopted pets"

## this will print below :
# P Hanson has adopted the following pets:
# a cat named Butterscotch
# a cat named Pudding
# a bearded dragon named Darwin

# B Holmes has adopted the following pets:
# a dog named Kennedy
# a parakeet named Sweetie Pie
# a dog named Molly
# a fish named Chester

# The Animal Shelter has the following unadopted pets:
# a dog named Asta
# a dog named Laddie
# a cat named Fluppy
# a cat named Kat
# a cat named Ben
# a parakeet named Chatterbox
# a parakeet named Bluebell

# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.
# Animal Shelter has 7 unadopted pets