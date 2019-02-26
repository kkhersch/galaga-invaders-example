#!/usr/bin/env ruby

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
      missiles.add_from(ship)
    end
    if key == 'p'
      missiles.add_from(alien)
    end
  end

end

GalagaInvaders.new.show

=begin
Reflecting on Principle
-----------------------
1. What is "duck typing" and what does it have to do with polymorphism?

"If and object quacks like a duck and walks likea duck, then its class is immaterial, it's a duck."
Duck types are public interfaces that are defined by its behavior than what the class is providing less coupling.
"Polymorphism is OOP refers to the ability of many different objects to respond to the same message."
Meanings a polymorphic method can have interchangeable objects that the sender sends to without needing to know about the object itself

2. What are some common code smells that indicate the need for relying on a
   "duck type" rather than a concrete class?

The use of a case statement, using is_a?, kind_of?, responds_to?


3. True or False: Abstractions like duck typing make code explicitly easier to
   understand, vs. using concrete types.
   
   False
=end
