class ProjectsController < ApplicationController

	def index	
		@projects = Project.order(created_at: :desc).limit(10)

		render :index
	end

	def show
		@my_project = Project.find(params[:id])

# in Rails, the render here is implicit
# we're writing it in anyway for the sake of clarity while learning
		render :show 
	end
end
