require_relative "lib/Manager"
require_relative "lib/Employee"
require_relative "lib/Department"
require 'pry'


#Test your code here
m1 = Manager.new('m1','dept1', 15)
m2 = Manager.new('m2','dept2', 16)
m3 = Manager.new('m3','dept3', 17)

e1 = Employee.new('e1', 5000, m1)
e2 = Employee.new('e2', 5500, m2)
e3 = Employee.new('e3', 6500, m3)

binding.pry
puts "done"
