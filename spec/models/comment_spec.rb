require 'rails_helper'

RSpec.describe Comment, :type => :model do
	subject{described_class.new(content: "Anything", post_id: 1)}

	it "should not have empty content" do
		subject.content = nil
		expect(subject).to_not be_valid
	end

	it "should have a post_id" do
		subject.post_id = nil
		expect(subject).to_not be_valid
	end

end
