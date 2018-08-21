require 'pry'

class Owner
  attr_accessor :owner, :pets
  attr_reader :species, :name
  @@all = []

  def initialize(species)
    @owner = owner
    @@all << self
    @species = species
    @pets = pets
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

  def say_species
    return "I am a human."
  end

  def name=(name)
    @name = name
  end

  def pets
    pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def buy_fish(name)
    owner.pets[:fishes] << name
  end

end
