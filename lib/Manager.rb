class Manager

    attr_reader :name 
    attr_accessor :department, :age 

    @@all = []

    def initialize(name, department, age )
        @name = name 
        @department = department 
        @age = age 
        @@all << self
    end 

    def self.all
        @@all
    end 

    def employees
        Employee.all.select {|e| e.manager_name == self.name}
    end 

    def hire_employee(name, salary)
        e = Employee.new(name, salary, self.name)
    end 

    def self.all_departments
        all.map {|m| m.department}
    end 

    def self.average_age
        all.map {|m| m.age }.sum.to_f / all.count 
    end 




end
