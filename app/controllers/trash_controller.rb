class TrashController < ApplicationController
	before_action :find_object, only: [:trash, :restore]

  def index
  	@posts = Post.where(trashed: true)
  	@comments = Comment.where(trashed: true)
  end

  def trash
  	@object.update(trashed: true)
  	redirect_to root_path
  end

  def restore
  	@object.update(trashed: false)
  	redirect_to root_path
  end

  private

  def find_object
  	@object = params[:class].constantize.find(params[:id])
  end

end
