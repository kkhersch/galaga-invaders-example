class MissileCollection

  attr_reader :missiles

  def initialize
    @missiles = []
  end

  def launch_for(ship)
    add(Missile.new(ship.mizzle_location, ship.ordinance_velocity))
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
end


