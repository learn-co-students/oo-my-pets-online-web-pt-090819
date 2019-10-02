require 'pry'

class Owner
  
  attr_reader :name, :species
  
  @@all = []
  @@pets = [] 
  
  def initialize(name, species="human")
    @name = name
    @species = species
    save
    @cats = []
    @dogs = []
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def save
    @@all << self
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
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(name)
    @cats << Cat.new(name, self)
  end
  
  def buy_dog(name)
    @dogs << Dog.new(name, self)
  end
  
  def walk_dogs
    dogs.each {|doggo| doggo.mood = "happy"}
  end
  
  def feed_cats
    cats.each {|kitty| kitty.mood = "happy"}
  end
  
  def pets
    @pets
  end
  
  def sell_pets
    self.cats.each do |item|
      item.mood = "nervous"
      item.owner = nil
    end
    self.dogs.each do |item|
      item.mood = "nervous"
      item.owner = nil
    end
    self.cats.clear
    self.dogs.clear
  end
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end