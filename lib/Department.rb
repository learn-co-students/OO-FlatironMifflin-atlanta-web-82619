class Department
    attr_reader :department_name, :manager, :employee
    @@all = []

    def initialize(department_name, manager, employee)
        @department_name = department_name
        @manager = manager
        @employee = employee
        @@all << self
    end

    def self.all
        @@all
    end

    def self.hire_employee(name, salary)
        Employee.new(name, salary)
    end 
end