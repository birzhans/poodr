# Chapter 2: Single Responsibility

require_relative 'gear'
require_relative 'wheel'

wheel = Wheel.new(26, 1.5)
puts "Circumference: #{wheel.circumference}"

gear = Gear.new(52, 11, wheel)
puts "Gear inches: #{gear.gear_inches}"
puts "Ratio: #{gear.ratio}"
