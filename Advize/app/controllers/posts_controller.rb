class PostsController < ApplicationController
	def create
    	@project = Project.find(params[:project_id])
    	Post.create(post_params.merge({project: @project, user: current_user}))
    	# @post = @project.posts.create(post_params)
    	# @post.user_id = current_user.id
    	# @post.save
    	redirect_to project_path(@project)
  	end
 
  private
    def post_params
      params.require(:post).permit(:body)
    end

end
