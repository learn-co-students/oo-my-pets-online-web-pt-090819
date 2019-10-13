require 'pry'

class Owner
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self 
  end
  
  def say_species
    p "I am a #{@species}."
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
    Cat.all.select { |cat| cat.owner == self  }
  end
  
  def dogs
    Dog.all.select { |dog| dog.owner == self  }
  end
  
  def buy_cat(new_cat_name)
    new_cat = Cat.new(new_cat_name, self)
  end 
  
  def buy_dog(new_dog_name)
    new_dog = Dog.new(new_dog_name, self)
  end 
  
  def walk_dogs
    Dog.all.each { |dog| dog.mood = "happy" }
  end 
  
  def feed_cats
    Cat.all.each { |cat| cat.mood = "happy" }
  end 
  
  def sell_pets
    Dog.all.each do |dog| 
      dog.mood = "nervous"
      dog.owner = nil 
    end
    Cat.all.each do |cat| 
      cat.mood = "nervous"
      cat.owner = nil
    end 
  end
  
  def list_pets
    p "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  
end