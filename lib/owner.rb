require 'pry'
class Owner
  attr_reader :name, :species
  attr_accessor  :pets
  # code goes here
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    # @pets = { :cats => [], :dogs => [] }
    end  

  def name
    @name
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a human."
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
    Cat.all.select{|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
    # @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
    # @pets[:dogs] << dog
  end

  def walk_dogs
  dogs.collect{|dog| dog.mood = "happy"}
  end 

  def feed_cats
    cats.collect{|cat| cat.mood = "happy"}
  end

  def sell_pets
    cats.collect{|cat| cat.mood = "nervous"}
    dogs.collect{|dog| dog.mood = "nervous"}
    cats.clear
    dogs.clear
  end

end

