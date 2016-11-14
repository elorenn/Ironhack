class CommentsController < ApplicationController

	def index
		@the_concert = Concert.find(params[:id])
		@the_comments = @the_concert.comments 
		render 'index'
	end
end
