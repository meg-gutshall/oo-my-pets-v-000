class Owner
  attr_accessor :owner, :pets
  attr_reader :species, :name
  @@all = []

  def initialize(species)
    @owner = owner
    @@all << self
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []} # All pets for owner instance
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
    return "I am a #{species}."
  end

  # Name new pets
  def name=(name)
    @name = name
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes] << new_fish # Add fish to owner's pets
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat # Add cat to owner's pets
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs] << new_dog # Add dog to owner's pets
  end

  def walk_dogs
    self.pets[:dogs].each {|dog_array| dog_array.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|dog_array| dog_array.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|dog_array| dog_array.mood = "happy"}
  end

  def sell_pets
    self.pets.each {|type, pet| pet.each {|pet_array| pet_array.mood = "nervous"}}
    @pets.clear
  end

  def list_pets
    fish_count = self.pets[:fishes].count
    dog_count = self.pets[:dogs].count
    cat_count = self.pets[:cats].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end