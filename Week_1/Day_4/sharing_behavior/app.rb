require_relative("lib/payable.rb")
require_relative("lib/programmer.rb")
require_relative("lib/designer.rb")

puts ""

nizar = Programmer.new
nizar.program

puts ""

lorena = Designer.new
lorena.design_things 

puts ""