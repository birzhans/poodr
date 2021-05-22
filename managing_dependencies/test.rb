# Chapter 3: Managing Dependencies

require_relative 'gear'
require_relative 'wheel'

wheel = Wheel.new(26, 1.5)
puts "Circumference: #{wheel.circumference}"

gear = Gear.new(
  wheel:     wheel
)

puts "Gear inches: #{gear.gear_inches}"
puts "Ratio: #{gear.ratio}"
