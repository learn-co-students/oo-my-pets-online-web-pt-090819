require 'pry'

class Owner
  attr_reader :name
  attr_accessor :species
  
  @@owner = []
 
   def initialize(name)
    @name = name
    @species = "human"
    @@owner << self
    
  end

  
  
  def name=(name)
    raise NoMethodError if name != self
  end
  
  def species=(species)
    raise NoMethodError if species != "human"
   @species
  end 
  
  def say_species
    return "I am a #{species}."
 end 
 
  def self.all 
    @@owner
  end 

  def self.count
    @@owner.length 
  end 
  
  def self.reset_all 
    @@owner.clear
  end 

  def cats
    Cat.all.select {|cat|
    cat.owner == self}
 
  end

  def dogs
    Dog.all.select {|dog|
    dog.owner == self}
  end 

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end 
  
  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end 
  
  def sell_pets
    pets = self.dogs + self.cats 
    pets.map {|pet| 
      pet.mood = "nervous"
      pet.owner = nil}
    end 
  
  def list_pets 
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end 
  
end