class Player

  attr_reader :name
  attr_accessor :num_lives

  def initialize(name)
    @name = name
    @num_lives = 3
  end

end

