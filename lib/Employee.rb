class Employee
  attr_reader :name
  attr_accessor :salary, :manager_name

  @@all = []
  def initialize(name, salary, manager_name)
    @name = name
    @salary = salary
    @manager_name = manager_name
    @@all << self
  end

  def tax_bracket
    @@all.select {|e| (e.salary - self.salary).abs <= 1000 }.reject {|e| e == self}
  end

  def my_department
    Manager.all.find {|m| m.name == self.manager_name}.department
  end

  def self.all
    @@all
  end

  def self.paid_over(number)
    all.select { |e| e.salary > number}
  end

  def self.find_by_department(department)
    @@all.find {|e| e.my_department == department}
  end

end
