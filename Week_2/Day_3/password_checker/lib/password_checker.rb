class PasswordChecker

	def check_password(email, password) 
		@email = email
		@password = password

		username = @email.split("@")
		domain = username[1].split(".com")[0]

		if @password.length < 8

			false

		elsif @email != email || @password != password
			 
			false

		elsif (@password =~ (/["a-zA-Z"]/)) == nil
			  
			false

		elsif (@password =~ (/["0-9"]/)) == nil
			
			false	

		elsif (@password =~ (/["!@#$%^&*+"]/)) == nil
		
			false	

		elsif (@password =~ (/["A-Z"]/)) == nil
		
			false

		elsif (@password =~ (/["a-z"]/)) == nil
		
			false								

		elsif @password.include?(username[0]) 
 
			  
			false

		elsif @password.include?(domain) 
 
			  
			false	
					
		else
			
			true	  		  		  		  
		end

	end

end
