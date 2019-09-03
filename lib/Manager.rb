class Manager
    attr_reader :name, :department, :age
    attr_accessor :employees

    @@all = []

    def initialize (name, department, age)
        @name = name
        @department = department
        @age = age
        @employees = []

        @@all << self
    end

    def self.all
        @@all
    end

    def hire_employee (name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        self.all.map{|manager| manager.department}.uniq
    end

    def self.average_age
        self.all.sum{|manager| manager.age} / self.all.count.to_f
    end
end
