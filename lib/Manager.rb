class Manager
    attr_reader :name, :age
    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def self.all_departments
        Department.all.map { |d| d.department_name }.uniq
    end

    def self.average_age
        all.sum { |m| m.age }
    end

    def self.manager_count
        all.count
    end

    def employees
        Department.all.select { |d| d.manager == self }.map { |d| d.employee }
    end

    def hire_employee(name, salary)
        Department.hire_employee(name, salary)
    end
end
