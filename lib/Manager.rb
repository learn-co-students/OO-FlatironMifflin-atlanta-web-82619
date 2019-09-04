class Manager
    attr_reader :name, :age, :department

    @@all = []
    
    def initialize(name, age, department)
        @name = name
        @age = age
        @department = department
        @@all << self
    end

    def employees
        Employee.all.select {|employee| employee.manager == self}
    end

    def hire_employee(name, salary)
         Employee.new(name, self, salary)
    end

    def self.all_departments
        all.map {|manager| manager.department}
    end

    def self.average_age
        ((all.reduce(0.0){|total, n| total + n.age})/all.length).to_f.round(2)
    end

    def self.all
        @@all
    end
end
