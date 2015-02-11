class CommentsController < ApplicationController
  def new
  end

  def index
    @comments = Comment.all
  end

  def create
    @comment = Comment.new(comment_params)

    @comment.save
    redirect_to @comment
  end

    def show
    @comment = Comment.find(params[:id])
  end

  private
  def comment_params
    params.require(:comment).permit(:title, :body)
  end


end
