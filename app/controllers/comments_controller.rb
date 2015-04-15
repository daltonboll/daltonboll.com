class CommentsController < ApplicationController
  
  def index
    @comments = Comment.all
    @post = Post.find(params[:post_id])
  end

  def new
    @comment = Comment.new
  end

  def show
    set_comment
  end

  def edit
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(params.require(:comment).permit!)  #TODO: get rid of !
    redirect_to @post
  end

  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to post_comment_path, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: post_comment_path }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to post_comments_path, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:post_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:name, :email, :website, :body)
    end
end
