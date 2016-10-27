class Post
attr_accessor(:title, :date, :text)

	def initialize(title, date, text)
		@title = title
		@date = date
		@text = text

	def title
		@title
	end

	def date
		@date
	end

	def text
		@text
	end	

end