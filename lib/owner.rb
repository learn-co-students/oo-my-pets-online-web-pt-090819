class Owner
  attr_reader :name, :species
  @@all=[]
  def initialize(name)
    @name=name
    @species = "human"
    @@all<< self
    @pets =[]
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    counter=0
    @@all.each do |person|
      counter+=1
    end
    counter
  end
  
  def self.reset_all
    @@all=[]
  end
  
  def cats
    Cat.all.select do |cat|
      cat.owner == self
  
    end
  end
  
  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
    
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    dogs.each do |dog|
      dog.mood = "happy"
    end
  end
    
  def feed_cats
    cats.each do |cat|
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    
    dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
  
  end
  
  def list_pets
    dogcount=0
    catcount=0
   dogs.each {|dog| dogcount+=1}
   cats.each {|cat| catcount+=1}
   return "I have #{dogcount} dog(s), and #{catcount} cat(s)."
  end
  
end