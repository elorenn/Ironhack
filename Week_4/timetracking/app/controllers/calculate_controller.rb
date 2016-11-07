class CalculateController < ApplicationController

	def add_form
		render "add_form"
	end

	def process_addition
		@a = params[:first_num].to_i
		@b = params[:second_num].to_i
		@results = @a + @b

		render "results"
	end
end
