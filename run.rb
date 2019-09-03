require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

Allie = Manager.new("Allie", "Shoes", 29)
chandler = Manager.new("Chandler", "Electronics", 28)
shawn = Manager.new("Shawn", "Front End", 34)
elaine = Manager.new("Elaine", "General Manager", 36)


chandler.hire_employee("Dan", 60000)
shawn.hire_employee("Mark", 72000)
shawn.hire_employee("Anjelica", 80000)
elaine.hire_employee("Devin", 62000)

#Test your code here


binding.pry
puts "done"
