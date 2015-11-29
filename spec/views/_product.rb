require 'rails_helper'

describe Product do

	context "when the product has comments" do

		before_build do 
			factory :product do 
				product = build(:product, :name => "race bike")
				product.name
			end
			factory :user do
				user = build(:user, :email => "air@plane.com", :password => "something")
				user.email
				user.password
			end
			factory :comment do |product|
				product.comment = build(:comment, :rating => 1, :user => @user, :body => "Aweful bike!")
				product.comment = build(:comment, :rating => 3, :user => @user, :body => "Ok bike")
				product.comment = build(:comment, :rating => 5, :user => @user, :body => "Awesome bike!")
			end
		end
		
		
		it "returns the average rating of all comments" do
			expect(product.comment.average_rating).to eq 3
		end
	end

	context "When creating a new product" do

		before_build do 
			product = build(:product, :description => "This is a fast bike")
		

		it "not valid without a name" d
			expect(product).not_to be_valid
		end
	end

end