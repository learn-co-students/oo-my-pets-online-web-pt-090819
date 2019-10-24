class Dog
  attr_reader :name
  attr_accessor :owner, :mood

  @@all = []

  def initialize(name,owner,mood = "nervous")
    @owner = owner
    @name = name
    @mood = mood
    @@all << self
  end

  def self.all
    @@all  
  end

end