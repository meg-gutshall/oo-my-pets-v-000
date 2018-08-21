class Owner
  attr_accessor :owner
  attr_reader :species
  @@all = []

  def initialize(owner)
    @owner = owner
    @@all << self
  end

  def self.all
    @@all
  end


end
