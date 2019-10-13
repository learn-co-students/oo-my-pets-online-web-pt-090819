class Dog
  attr_accessor :name, :owner, :mood
  
  @@all = []
  
  def initialize(name, owner)
    @name = name 
    @owner = owner
    @mood = "nervous"
    @@all << self
  end 
  
  def name=(name)
  raise NoMethodError if name != self
  end
  
  def mood
    @mood
  end
  
  def self.all 
    @@all
  end 
  
end