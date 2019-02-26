class MissileCollection

  attr_reader :missiles

  MISSILE_VELOCITY = 10

  def initialize
    @missiles = []
  end

  def add(missile)
    missiles << missile
  end

  def update
    missiles.each(&:move)
  end

  def draw
    missiles.each(&:draw)
  end

  def add_from(entity)
    missile = Missile.new(entity.muzzle_location)
    missile.launch(entity.orientation * MISSILE_VELOCITY)
    add(missile)
  end

end
