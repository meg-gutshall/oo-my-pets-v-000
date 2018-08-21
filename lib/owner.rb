class Owner
  attr_accessor :owner
  attr_reader :species
  @@all = []

  def initialize(owner, species)
    @owner = owner
    @@all += 1
    @species = species
  end


end
