require_relative "lib/Manager"
require_relative "lib/Employee"
require_relative "lib/Department"
require 'pry'


#Test your code here
#, "Sales"
#, "Accounting"
#, "Customer Service"


m1 = Manager.new("Dwight", 40)
m2 = Manager.new("Oscar", 37)
m3 = Manager.new("Kelly", 35)

e1 = Employee.new("Raza", 90000)
e2 = Employee.new("Dan", 91000)
e3 = Employee.new("Alex", 120000)
e4 = Employee.new("Nick", 40000)
e5 = Employee.new("Andrea", 89000)

d1 = Department.new("Sales", m1, e1)
d2 = Department.new("Accounting", m2, e3)
d3 = Department.new("Customer Service", m3, e2)




binding.pry
puts "done"
