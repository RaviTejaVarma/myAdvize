class ProjectsController < ApplicationController

	before_filter :authenticate_user!, except: [:index, :show]

	def index
		@projects = Project.all
	end

	def new
		@project = current_user.projects.build
	end

	def edit
		@project = Project.find(params[:id])
	end

	def create
		@project = current_user.projects.build(project_params)
 
   	    if @project.save
	    	redirect_to @project
	    else
	    	render 'new'
	    end
	end

	def update
		@project = Project.find(params[:id])

		if @project.update(project_params)
			redirect_to @project
		else
			render 'edit'
		end
	end

	def show
		@project = Project.find_by_title(params[:title])
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy

		redirect_to projects_path
	end

	private
	def project_params
		params.require(:project).permit(:title, :description, :budget, :work_force)
	end

end
