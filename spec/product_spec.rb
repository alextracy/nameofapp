require 'rails_helper'

describe Product do

	context "when the product has comments" do

		before {
			@product = Product.create(:name => "race bike")
			@user = User.create(:email => "air@plane.com", :password => "something")
			@product.comments.create(:rating => 1, :user => @user, :body => "Aweful bike!")
			@product.comments.create(:rating => 3, :user => @user, :body => "Ok bike")
			@product.comments.create(:rating => 5, :user => @user, :body => "Awesome bike!") 
		}
		

		it "returns the average rating of all comments" do
			expect(@product.average_rating).to eq 3
		end
	end

	context "When creating a new product" do

		before {
			@product = Product.create(:description => "This is a fast bike")
		}

		it "not valid without a name" do
			expect(@product).not_to be_valid
		end
	end

end