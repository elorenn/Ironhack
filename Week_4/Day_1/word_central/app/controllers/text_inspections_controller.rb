class TextInspectionsController < ApplicationController

	def new
		render 'new' 
	end

	def create
		@text = params[:text_inspection][:user_text]
		@word_count = @text.split(" ").length
		render "results"
	end
end
