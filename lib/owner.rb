class Owner

  attr_reader :species
  attr_accessor :name, :pets
  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.size
  end

  def species
    @species
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish_name)
    self.pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    self.pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    self.pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    self.pets[:dogs].each { |each_dog| each_dog.mood = "happy" }
  end

  def play_with_cats
    self.pets[:cats].each { |each_cat| each_cat.mood = "happy" }
  end

  def feed_fish
    self.pets[:fishes].each { |each_fish| each_fish.mood = "happy" }
  end

  def sell_pets
    self.pets.values.flatten.each { |each_pet| each_pet.mood = "nervous" }
    self.pets.each { |pet_type, pets| self.pets[pet_type].clear }
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end

end
