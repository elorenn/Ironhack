class PasswordChecker
  def check_password(email, password)
    if long_enough?(email, password) &&
       input_matches?(password) &&
       contains_letters?(password) &&
       contains_numbers?(password) &&
       contains_symbols?(password) &&
       contains_uppercase?(password) &&
       contains_lowercase?(password) &&
       contains_username?(email, password) &&
       contains_domain?(email, password)
      true
    else
      false
    end
  end



# class PasswordChecker

# 	def check_password(email, password) 
# 		@email = email
# 		@password = password

# 		username = @email.split("@")
# 		domain = username[1].split(".com")[0]

# 		if @password.length < 8

# 			false

# 		elsif @email != email || @password != password
			 
# 			false

# 		elsif (@password =~ (/["a-zA-Z"]/)) == nil
# 			  # @password.match(/[a-zA-Z]/) != nil then true
# 			false

# 		elsif (@password =~ (/["0-9"]/)) == nil
			
# 			false	

# 		elsif (@password =~ (/["!@#$%^&*+"]/)) == nil
# 		# @password.match(/[^a-zA-Z0-9]/) != nil then true
# 		# the ^ means anything that is not the following (not a-zA-Z0-9)
# 			false	

# 		elsif (@password =~ (/["A-Z"]/)) == nil
		
# 			false

# 		elsif (@password =~ (/["a-z"]/)) == nil
		
# 			false								

# 		elsif @password.include?(username[0]) 
 
			  
# 			false

# 		elsif @password.include?(domain) 
 
			  
# 			false	
					
# 		else
			
# 			true	  		  		  		  
# 		end

# 	end

# end


private 


def long_enough?(email, password)
	password.length >= 8
end

def input_matches?(password)
	email == email && @password == password
end

def contains_letters?(password)
	password.match(/[a-zA-Z]/) != nil 
end

def contains_numbers?(password)
	password.match(/[0-9]/) != nil 
end

def contains_symbols?(password)
	password.match(/[^a-zA-Z0-9]/) != nil
end

def contains_uppercase?(password)
	password.match(/[A-Z]/) != nil
end

def contains_lowercase?(password)
	password.match(/[a-z]/) != nil
end

def contains_username?(email, password)
	username = @email.split("@")
	!password.include?(username[0]) 
end

def contains_domain?(email, password)
	username = @email.split("@")
	domain = username[1].split(".com")[0]
	!password.include?(domain)
end

end