class Manager

  attr_reader :name, :age, :department, :employee
	@@all = []

	def initialize(name, age, department)
    @name = name
    @age = age
    @department = department
    @employee = []

	  @@all << self
	end

	def self.all
	  @@all
	end

  ####

  def employees
    self.employee
  end

  def hire_employee(name, salary)
    new_employee = Employee.new(name, salary)
    self.employee << new_employee
  end

  def self.all_departments
    self.all.map {|manager| manager.department}
  end

  def self.average_age
    arr = []
    self.all.select do |manager|
      arr << manager.age.to_f
    end
    (arr.sum / arr.count).to_f.round(1)
  end

end
