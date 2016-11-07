class TextInspectionsController < ApplicationController

	def new
		render 'new' 
	end

	def create
		render plain: "This route is text_inspections#create."
	end
end
