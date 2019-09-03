require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

manager1 = Manager.new("Jim", 55, "Costco")
manager2 = Manager.new("Bill", 23, "Walmart")
manager3 = Manager.new("Sara", 32, "Bass Pro Shop")

# employee1 = Employee.new("Kimothy", 40000)
# employee2 = Employee.new("Marshall", 26000)
# employee3 = Employee.new("Blue Collar Bob", 89000)

nick = manager1.hire_employee("nick", 2)
manager1.hire_employee("mark", 9999999)

binding.pry
puts "done"
