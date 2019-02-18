require_relative 'alien'
require_relative 'ship'
require_relative 'missile_collection'

class GalagaInvaders

  WIDTH = 1920
  HEIGHT = 1080

  attr_accessor :ship, :alien, :missiles

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new(WIDTH, HEIGHT)
    @alien = Alien.new
    @missiles = MissileCollection.new
  end

  def update
    missiles.update
  end

  def draw
    ship.draw
    alien.draw
    missiles.draw
  end

  def show
    while (true) do
      update
      draw
      key_pressed(gets.chomp) # Simulating a key interrupt.
    end
  end

  def key_pressed(key)
    if key == 'a'
      ship.move_left
    elsif key == 'd'
      ship.move_right
    elsif key == ' '
      missiles.launch_for(ship)
    end
    if key == 'p'
      missiles.launch_for(alien)
    end
  end

end

GalagaInvaders.new.show

=begin
Reflecting on Principle
-----------------------
1. True or False: Good OO design eliminates dependencies.
  FALSEEEEEEEE

2. Briefly list four ways in which a class that collaborates with another class
   is dependent on it. (For example, one dependency is knowing the other class name.)
  An object has a dependency when it knows:
    Name of another object
    Name of a message that it intends to send to someone other than itself
    Arguments that a message requires
    Order of those arguments

3. What are two primary factors to consider when assessing the risk of a dependency?
  Likelihood of the requirements to be changed, and the effect of change to other depenencies

4. What is Metz's rule of thumb for choosing a dependency direction?
  Depend on things that change less often than another
    Some classes are more likely than others to have changes in requirements
    Concrete classes are more likely to change than abstract classes
    Changing a class that has many dependents will result in widespread consequences
=end
