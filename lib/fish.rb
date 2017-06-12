class Fish

  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def mood=(fish_mood)
    @mood = fish_mood
  end

end
