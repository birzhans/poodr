# Chapter 3: Managing Dependencies

class Wheel
  attr_reader :rim, :tire, :gear

  def initialize(rim, tire, chainring, cog)
    @rim  = rim
    @tire = tire
    @gear = Gear.new(chainring, cog)
  end

  def diameter
    rim + (tire * 2)
  end

  def gear_inches
    gear.gear_inches(diameter)
  end

  def circumference
    diameter * Math::PI
  end
end
