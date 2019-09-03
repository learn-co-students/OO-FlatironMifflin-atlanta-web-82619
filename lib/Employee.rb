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

  ####

  def self.paid_over(num)
    self.all.select {|e| num < e.salary}
  end

  def self.find_by_department(department)
    Manager.all.find {|manager| manager if department == manager.department}.employee.first
  end

  def manager_name ####
    Manager.all.select {|manager| manager.name if manager.employee == self.name}
  end

  def tax_bracket ####
    Employee.all.select do |e|
      self.salary - e.salary > -1000 && self.salary - e.salary < 1000
    end
  end

end
