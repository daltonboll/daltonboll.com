class CommentsController < ApplicationController
  include PagesHelper
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_filter :header_links # Allow @header_links from PagesHelper to be accessible
  before_filter :footer_links # Allow @footer_links from PagesHelper to be accessible

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(params[:comment]) #TODO: get rid of !
    redirect_to @post
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def comment_params
    params.require(:comment).permit(:name, :email, :website, :content, :post_id)
  end
end
