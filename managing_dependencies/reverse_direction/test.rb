# Chapter 3: Managing Dependencies | Reverse Direction

require_relative 'gear'
require_relative 'wheel'

wheel = Wheel.new(26, 1.5, 52, 11)
puts "Circumference: #{wheel.circumference}"

puts "Gear inches: #{wheel.gear_inches}"
puts "Ratio: #{wheel.gear.ratio}"
