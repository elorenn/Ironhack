class SalariedEmployee < Employee
	#attr_accessor(:name, :email, :yearly_salary)
    def initialize(name, email, yearly_salary)
        @name = name
        @email = email
        @yearly_salary = yearly_salary
    end

    def calculate_salary
    	salary = @yearly_salary / 52.0
        salary.round(2)
    # #this means round the float to 2 decimals 
    	#tax = salary * 0.18
    	#salary_after_tax = salary - tax 
# #subtract tax in payroll instead         
    end
end