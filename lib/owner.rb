class Owner
  attr_accessor :owner
  @@all = []

  def initialize(owner)
    @owner = owner
    @@all += 1


end
