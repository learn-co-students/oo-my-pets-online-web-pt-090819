require 'pry'

class Owner
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def species
    return "human"
  end

  def say_species
    p "I am a human."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear()
  end

  def cats
    Cat.all.select{|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end

  def buy_cat(name, owner = self)
    new_cat = Cat.new(name, owner)
    new_cat
  end

  def buy_dog(name, owner = self)
    new_dog = Dog.new(name, owner)
    new_dog
  end

  def walk_dogs
    Dog.all.select(){|dog| dog.mood = "happy"}
  end

  def feed_cats
    Cat.all.select(){|cat| cat.mood = "happy"}
  end

  def sell_pets
    Dog.all.select(){|dog| dog.mood = "nervous"}
    Dog.all.select(){|dog| dog.owner = nil}
    Cat.all.select(){|cat| cat.mood = "nervous"}
    Cat.all.select(){|cat| cat.owner = nil}
  end

  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
end
