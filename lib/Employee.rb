class Employee


    attr_reader :name 
    attr_accessor :salary, :manager_name 

    @@all = []

    def initialize(name, salary, manager_name)
        @name = name 
        @salary = salary
        @manager_name = manager_name
        @@all << self 
    end 

    def my_department
        Manager.all.find {|m| manager.name == self.manager_name}.department
    end 


    def tax_bracket
        all.select {|employees| (employees.salary - self.salary).abs <= 1000}.reject {employees| employees.salary == self}
    end 

    def self.all 
        @@all
    end 

    def self.paid_over(salary)
        all.select {|employees| employees.salary > salary}
    end 

    def self.find_my_department
        @@all.find {|e| e.my_department == department}
    end 


end
