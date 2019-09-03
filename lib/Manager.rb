require "pry"

class Manager

    attr_reader :name, :age
    attr_accessor :department

    @@all = []

    def self.all
        @@all
    end

    def initialize(name, department, age)
        @department = department
        @name = name
        @age = age
        @@all << self
        @employees = []
    end

    def employees
        #returns an `Array` of all the employees that the manager oversees
        self.all.select {|employee| employee.manager}
    end

    def hire_employee(name, department, salary)
        #takes a `String` argument and a `Fixnum` argument of an employee's name and the employee's salary, 
        #respectively, and adds that employee to the list of employees that the manager oversees
        employee = Employee.new(name, department, salary, self)
        self.employees << employee
    end

    def self.average_age
        #returns a `Float` that is the average age of all the managers
        Manager.all.reduce(0) {|total, manager| total += manager.age}.to_f / self.all.size.to_f
    end
end
