class Owner
  attr_accessor :owner
  attr_reader :species
  @@all = []

  def initialize(species)
    @owner = owner
    @@all << self
    @species = species
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end


end
