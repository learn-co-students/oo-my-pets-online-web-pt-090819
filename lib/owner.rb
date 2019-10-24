
class Owner
  @@all = []
  
  attr_reader :name, :species
  def initialize(name,species="human")
    @species = species
    @name = name
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end

  def cats
    Cat.all.select{|c| c.owner == self}
  end

  def dogs
    Dog.all.select{|c| c.owner == self}
  end

  def buy_cat(name)
    Cat.new(name,self)
  end

  def buy_dog(name)
    Dog.new(name,self)
  end
  
  def walk_dogs
    dogs.each{|dog| dog.mood ="happy"}
  end
  
  def feed_cats
    cats.each{|cat| cat.mood ="happy"}
  end

  def pets
    pets = cats + dogs
  end
  
  def sell_pets
    pets.each do |p|
      p.mood = "nervous"
      p.owner = nil
    end
  end
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  
end