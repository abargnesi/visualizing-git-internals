module Flight
  def take_off; end
  def land; end
end

module Strength
  def strength
    @strength * 100
  end
end

class Superhero < Object
  attr_reader :strength

  def initialize
    @strength = 1
  end

  def has_powers?
    true
  end
end

class Superman < Superhero
  include Flight
  include Strength
end

puts Superman.new.strength # => 100
