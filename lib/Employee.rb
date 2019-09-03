class Employee
    attr_reader :name, :salary, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        
        @@all.push(self)
        @manager.employees.push(self)
    end

    def self.all
        @@all
    end

    def self.paid_over(salary)
        self.all.select{|employee| employee.salary > salary}
    end

    def self.find_by_department(department)
        self.all.find{|employee| employee.manager.department == department}
    end

    def tax_bracket
        self.class.all.select{|employee| (employee.salary - self.salary).abs < 1000}.delete_if{|employee| employee == self}
    end
end
