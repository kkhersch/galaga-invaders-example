# Ship
# x and y represent the coordinate of the center of the ship.
# For example, when y is 900, then the nose of the ship is at
# coordinate (x, y - height / 2).

class Ship

  WIDTH = 100
  HEIGHT = 200
  SHIP_LATERAL_MOVEMENT = 5
  MISSILE_MOVEMENT = 10

  def initialize(x, y)
    @x = x
    @y = y
    @missile_coordinates_on_screen = []
  end

  def move_left
    @x -= SHIP_LATERAL_MOVEMENT
  end

  def move_right
    @x += SHIP_LATERAL_MOVEMENT
  end

  def fire_missile
    @missile_coordinates_on_screen << [@x, @y - HEIGHT / 2]
  end

  def move_missiles
    @missile_coordinates_on_screen.each do |missile|
      missile[1] -= MISSILE_MOVEMENT
    end
  end

  def draw
    # Ignore this
  end

  def draw_missiles
    @missile_coordinates_on_screen.each do |missile|

    end
  end

end


# I want to do this because ship does more than one thing
class Missiles

  def initialize(x, y)
    @x = x
    @y = y
  end

  def move_missiles
    @missile_coordinates_on_screen.each do |missile|
      missile[1] -= MISSILE_MOVEMENT
    end
  end

  def draw_missiles
    @missile_coordinates_on_screen.each do |missile|

    end
  end    
end




=begin
Reflecting on Principle
-----------------------
1. What does the OOD promise to give us, as programmers?
  Provides a roadmap to solving a problem by managing dependeciens 
  that objects have with each other and to tolerate change

2. What does Martin's SOLID acronym stand for? (Just expand the acronym.)
  Single responsibility principle
  open close principle
  liskov substitution principle
  interface separation principle
  dependency inversion principle

3. True or False: It is our professional responsibility to always spend time designing before writing our code (designing now rather than later).
  False

4. In Metz' TRUE acronym, what does the E stand for and what does it mean?
  transparent
  reasonable
  usable
  exemplary

5. How does applying SRP naturally lead to good design?
  it prevents creating side effects, encapsulates the work done to be the only thing
  that the class or function does, when change is needed, the amount of change
  is localized to where the change is needed and not rippled out
=end
