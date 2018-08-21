class Owner
  attr_accessor :owner
  attr_reader :species
  @@all = []

  def initialize(owner, species)
    @owner = owner
    @@all << self
    @@all += 1
    @species = species
  end

  def self.all
    @@all
  end


end
