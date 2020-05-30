require 'rails_helper'

RSpec.describe PostsController, type: :controller do

	context "GET index" do
		it "returns a list of posts" do
			get :index
			expect(response).to be_successful
		end
	end

	context "GET show" do
		it "returns a particulur post" do
			post = Post.create!(title: "Test", body: "Test")
			get :show, params: {id: post.to_param}
			expect(response).to be_successful
		end
	end

	context "GET new" do
		it "creates a new post" do
			get :new
			expect(response).to be_successful
		end
	end

end