require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here



michael = Manager.new("Michael", "CS", 40)
andy = Manager.new("Andy", "Sales", 50)
employee1 = Employee.new("Pam", "CS", 45000, michael)
employee2 = Employee.new("Jim", "Sales", 60000, andy)

Employee.paid_over(40000)




binding.pry
puts "done"
