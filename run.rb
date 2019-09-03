require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
john = Manager.new("John", "Sales", 28)
nancy = Manager.new("Nancy", "Human Resources", 45)
susan = Manager.new("Susan", "Sanitation", 52)

andrea = john.hire_employee("Andrea", 65000)
ron = john.hire_employee("Ron", 70000)
ray = susan.hire_employee("Ray", 32000)
chad = nancy.hire_employee("Chad", 58000)
alycia = john.hire_employee("Alycia", 58500)

binding.pry
puts "done"
