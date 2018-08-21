class Owner
  attr_accessor :owner
  attr_reader :species
  @@all = []

  def initialize(owner)
    @owner = owner
    @@all << self
    @@all += 1
  end

  def self.all
    @@all
  end


end
