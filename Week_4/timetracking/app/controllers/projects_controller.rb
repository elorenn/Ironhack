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

	def new
		@my_project = Project.new

		render "new"
	end

	def create
		@my_project = Project.new(
			:name => params[:project][:name],
			:description => params[:project][:description])
		@my_project.save
		# .save will create a new row in your table, hence saving it
		# redirect_to "/projects/#{@my_project.id}"
		redirect_to project_path(@my_project)
	end
end
