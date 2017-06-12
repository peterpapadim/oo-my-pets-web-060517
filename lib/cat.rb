class Cat

attr_reader :name
attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def mood=(cat_mood)
    @mood = cat_mood
  end

end
