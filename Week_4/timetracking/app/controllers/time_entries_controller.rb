class TimeEntriesController < ApplicationController

	def index
		@my_project = Project.find(params[:project_id])
		@my_entries = @my_project.time_entries
	end

	def new
		@my_project = Project.find(params[:project_id])
		@my_entry  = @my_project.time_entries.new 

		render 'new'
	end

	def create
		@my_project = Project.find(params[:project_id])
		@my_entry = @my_project.time_entries.new(
			hours: params[:time_entry][:hours],
			minutes: params[:time_entry][:minutes],
			date: params[:time_entry][:date],
			comments: params[:time_entry][:comments])

		if @my_entry.save
			# redirect_to "/projects/#{@my_project.id}/time_entries"
			redirect_to project_time_entries_path(@my_project)
		else
			render 'new'
		end
	end
end
