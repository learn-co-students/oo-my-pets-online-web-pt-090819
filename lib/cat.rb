class Cat
  
  
  attr_accessor :owner, :mood
  
  attr_reader :name
  
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  #def self.cats
  #  Cat.all.count
  #end
  
  #def self.count
  #  @@all << self
  #end
    
  # code goes here
end