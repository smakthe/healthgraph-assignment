class TrashController < ApplicationController
  def index
  	@posts = Post.where(trashed: true)
  	@comments = Comment.where(trashed: true)
  end
end
