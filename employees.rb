class Company

  def initialize(name, employee_list = [])
    @name = name
    @employees = employee_list
  end

  def name
    @name
  end

  def company
    p "Welcome to #{@name}. The middleman of paper. This is our employee list"
    @employees.each do |worker_bee|
      p worker_bee.name
    end
  end

end


class Employee

  def initialize(name, title, start_date)
    @name = name
    @title = title
    @start_date = start_date
  end

  def name
    @name
  end

  def title
    @title
  end

  def start_date
    @start_date
  end

  def about
    p "Welcome #{@name} to the company. Your job title is #{@title}. You can begin working on #{@start_date}."
  end

end

employee_one = Employee.new("Michael", "Manager of this Orifice", "08-07-2017")
employee_two = Employee.new("Dwight", "Assistant to the Regional Manager", "08-07-2017")
employee_three = Employee.new("Stanley", "Soduku King", "09-21-2017")

employee_one.about
employee_two.about
employee_three.about

employee_list = []
employee_list << employee_one
employee_list << employee_two
employee_list << employee_three


company = Company.new("Dunder Mifflin", employee_list)

company.company