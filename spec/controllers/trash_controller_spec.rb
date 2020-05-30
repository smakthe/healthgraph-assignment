require 'rails_helper'

RSpec.describe TrashController, type: :controller do
	context "GET index" do
		it "returns trashed posts and comments" do
			get :index
			expect(response).to be_successful
		end
	end
end