class AsciisController < ApplicationController
	
	require "artii"

	def new
		render 'new' 
	end

	def create
		a = Artii::Base.new
		@text = params[:asciis][:user_text]
		@ascii_text = a.asciify(@text)
		render "results"
	end
end
