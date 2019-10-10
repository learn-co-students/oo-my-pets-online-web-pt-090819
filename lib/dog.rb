class Dog
  attr_accessor :owner, :mood
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name,owner)
    @species = "dog"
    @name = name
    @owner = owner
    owner.dogs << self
    @mood = "nervous"
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end