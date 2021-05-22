# When Gear is part of an external interface
require_relative 'wheel'

module SomeFramework
  class Gear
    attr_reader :chainring, :cog, :wheel

    def initialize(chainring, cog, wheel)
                @chainring = chainring
                @cog       = cog
                @wheel     = wheel
    end

    def ratio
      chainring / cog.to_f
    end
# ...
  end
end

# wrap the interface to protect yourself from changes
module GearWrapper
  def self.gear(args)
    SomeFramework::Gear.new(
      args[:chainring],
      args[:cog],
      args[:wheel]
    )
  end
end

# Now you can create a new Gear using an arguments hash.
gear = GearWrapper.gear(
         :chainring => 52,
         :cog => 11,
         :wheel => Wheel.new(26, 1.5)
       )
puts "Ratio: #{gear.ratio}"
