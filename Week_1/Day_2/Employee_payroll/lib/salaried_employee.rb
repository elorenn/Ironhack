require_relative("yearly_salary.rb")

class SalariedEmployee < Employee
    include YearlySalary

    def initialize(name, email, yearly_salary)
        @name = name
        @email = email
        @yearly_salary = yearly_salary
    end

    def calculate_salary
    	calculate_yearly_salary
        
# #subtract tax in payroll instead        

    end
end