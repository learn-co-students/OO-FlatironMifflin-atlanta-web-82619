class Employee
    attr_reader :name, :salary
    @@all = []

    def initialize(name, salary)
        @name = name
        @salary = salary
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(salary)
        all.select { |e| e if e.salary > salary }
    end

    def self.find_by_department(department)
        Department.all.select { |d| d.department_name == department}.map { |d| d.employee }.first
    end

    def tax_bracket
        Employee.all.select { |e| e if e != self && e.salary <= (self.salary + 1000) && e.salary >= (self.salary - 1000) }
    end
end
