class CommentsController < ApplicationController
  before_action :require_owner, except: [:index]
  before_action :require_admin, only: [:index]

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to comment_path(@comment)
    else
      render :new
    end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id])

    if current_user.admin
      render :edit
    elsif current_user.owner == @owner
      render :edit
    else
      redirect_to root_path
    end
  end

  def update
    @owner = Owner.find(params[:id])
    @owner.update(owner_params)

    if @owner.save
      redirect_to owner_path(@owner)
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:feedback)
  end

end
