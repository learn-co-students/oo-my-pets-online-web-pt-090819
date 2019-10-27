class Dog
  attr_accessor :owner, :mood
  attr_reader :name
  @@all=[]
  def initialize(name, owner)
    @owner = Owner.new(owner).name
    @name = name
    @mood = "nervous"
    @@all<< self
  end
  
  def self.all
    @@all
  end
end