class CommentsController < ApplicationController

	def index
		@the_concert = Concert.find(params[:concert_id])
		@the_comments = @the_concert.comments 
		render 'index'
	end

	def new
		@the_concert = Concert.find(params[:concert_id])
		@the_comment  = @the_concert.comments.new 

		render 'new'
	end

	def create
		@the_concert = Concert.find(params[:concert_id])
		@the_comment = @the_concert.comments.new(
			:user => params[:comment][:user],
			:comment => params[:comment][:comment],
			:date => params[:comment][:date])

		if @the_comment.save

			redirect_to concert_path(@the_concert)
		else
			render 'new'
		end
	end

	private

	def entry_params
		params.require(:comment).permit(:user,:comment)
	end
end
