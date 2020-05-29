class TrashController < ApplicationController
	include SoftDelete
	before_action :find_object, only: [:trash, :restore]

  def index
  	@posts = Post.where(trashed: true)
  	@comments = Comment.where(trashed: true)
  end

  private

  def find_object
  	@object = params[:class].constantize.find(params[:id])
  end

end
