class Owner
  attr_accessor :dogs, :cats
  attr_reader :name, :species
 
  @@all = []

 
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
  end
  
  def say_species
    "I am a human."
  end
  
  
  def buy_cat(name)
    Cat.new(name,self)
  end
  
  def buy_dog(name)
    Dog.new(name,self)
  end
  
  def walk_dogs
    @dogs.each do |i|
      i.mood = "happy"
    end
  end
  
  def feed_cats
    @cats.each do |i|
      i.mood = "happy"
    end
  end
  
  def sell_pets
    @dogs.each do |i|
      i.mood = "nervous"
      i.owner = nil
    end
    @cats.each do |i|
      i.mood = "nervous"
      i.owner = nil
    end
    @dogs = []
    @cats = []
  end
  
  def list_pets
    "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end
  
  def self.all
    @@all
  end
  
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all = []
  end
  
end