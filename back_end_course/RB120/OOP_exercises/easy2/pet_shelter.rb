class Owner
  attr_reader :name
  attr_accessor :pets

  def initialize(name)
    @name = name
    @pets = []
  end

  def number_of_pets
    @pets.size
  end
end

class Pet
  attr_reader :type, :name

  def initialize(type, name)
    @type = type
    @name = name
  end
end

class Shelter
  # attr_accessor :all_pets

  def initialize
    @all_pets = {}
  end

  def adopt(owner, pet)
    @all_pets[owner] = owner.pets unless @all_pets.keys.include?(owner)

    owner.pets << pet
  end

  def print_adoptions
    @all_pets.each_key do |owner|
      puts ''
      puts "#{owner.name} has adopted the following pets:"
      owner.pets.each do |value|
        puts "a #{value.type} name #{value.name}"
      end
    end
    puts ''
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
