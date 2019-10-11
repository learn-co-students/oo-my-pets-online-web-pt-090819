class Cat
  attr_accessor :mood, :owner
  attr_reader :name

@@cats = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@cats << self
  end

  def name
    @name
  end

  def self.all
    @@cats
  end
end
