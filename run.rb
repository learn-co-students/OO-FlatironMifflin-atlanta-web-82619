require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


jim = Manager.new("Jim Halpert", 33, "Day to Day")
michael = Manager.new("Michael Scott", 42, "Big Picture")

hanaa = Employee.new("Hanaa", jim, 9)
pamela = jim.hire_employee("Pamela", 50000)
darryl = jim.hire_employee("Darryl", 50999)
oscar = jim.hire_employee("Oscar", 51000)
ryan = michael.hire_employee("Ryan", 25000)
stanley = michael.hire_employee("Stanley", 55000)
phyllis = michael.hire_employee("Phyllis", 54500)



binding.pry
puts "done"
