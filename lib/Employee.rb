class Employee
    attr_reader :name, :salary, :manager, :manager_name
    @@all = []
    def initialize(name, manager, salary = 35000)
        @name = name
        @salary = salary
        @manager = manager
        @manager_name = manager.name
        @@all << self
    end

    def tax_bracket
        Employee.all.select { |employee| self.salary - employee.salary >= -1000 && self.salary - employee.salary <= 1000}.select{|employee| employee != self}
    end 

    def self.paid_over(salary)
        all.select{|employee| employee.salary > salary}
    end

    def self.find_by_department(department)
        all.find {|employee| employee.manager.department == department}
    end

    def self.all
        @@all
    end

end

