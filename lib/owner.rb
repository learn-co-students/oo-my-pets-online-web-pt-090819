require "pry"
class Owner
  
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = species
    @@all << self
  end
  
  def species
    @species = "human"
  end
  
  def say_species
    "I am a human."
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def name
    @name
  end
  
  def self.all
    @@all
  end
  
  def cats 
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(steve)
    Cat.new(steve, self)
  end
  
  
  def buy_dog(zoe)
    Dog.new(zoe, self)
    end
    
  def walk_dogs
    dogs.each{|dog|dog.mood = "happy"}
  end
  
  def feed_cats
    cats.each{|cat|cat.mood = "happy"}
  end
  
  def sell_pets
    sell_cats
    sell_dogs
   end
   
  def sell_cats
    cats.each do |cat|
    cat.mood = "nervous" 
    cat.owner = nil 
  end
  end
  
  def sell_dogs
    dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
  end
  
  def list_pets
    
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end