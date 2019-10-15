class Owner
  attr_reader :name, :species
  @@all = []
  

  def initialize(name)
    @species = "human"
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
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    cat.all.select{|c| c.owner == self}
  end

  def dogs
    dog.all.select{|d| d.owner == self}
  end
  
  def buy_cat(name)
    Cat.new(name,self)
  end

  def buy_dog(name)
    Dat.new(name,self)
  end
  
  def walk_dog
    dog.each{|d| d.mood ="happy"}
    end
  
  def feed_cat
    cat.each{|c| c.mood ="happy"}
  end


  def pets
    pets = dogs + cats
  end

  def sell_pets
    pets.each do |p|
    p.mood = "nervous"
    p.owner = "nil"
  end

 
  def list_pets
    "I have  #{self.dog.count} dog(s), and #{self.cat.count} cat(s)."
  end


end