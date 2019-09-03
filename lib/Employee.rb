
class Employee

    attr_reader :name
    attr_accessor :department, :salary, :manager

    @@all = []

    def self.all
        @@all
    end

    def initialize(name, department, salary, manager)
        @name = name
        @department = department
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.paid_over(amount)
        #takes a `Fixnum` argument and returns an `Array` of all the employees whose salaries are over that amount
        self.all.select {|e| e.salary > amount}
    end

    def self.find_by_department(dep_name)
        #takes a `String` argument that is the name of 
        #a department and returns the first employee whose manager is working in that department
        self.all.select {|e| e.department == dep_name}.first
    end

    def tax_bracket
        #returns an `Array` of all the employees whose salaries are within $1000 (± 1000) 
        #of the employee who invoked the method
        Employee.all.select {|e| (e.salary - self.salary).abs < 1000}
    end
end
