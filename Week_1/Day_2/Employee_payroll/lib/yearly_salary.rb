module YearlySalary
	def calculate_yearly_salary
    	salary = @yearly_salary / 52.0
        salary.round(2)
        #this means round the float to (2) decimals 
    end
end