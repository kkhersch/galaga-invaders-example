class Missile

  attr_accessor :x, :y, :velocity

  def initialize(args)
    @x = args[:x]
    @y = args[:y]
  end

  def launch(velocity)
    @velocity = velocity
  end

  def move
    self.y += velocity
  end

  def draw
    puts self
  end

  def to_s
    "#{falling? ? '☄️' : '🚀'} (#{x}, #{y})"
  end

  def falling?
    velocity > 0
  end

end
