# spec/factories/contacts.rb
require 'rails_helper'

FactoryGirl.define do

	context "when the product has comments" do
	
		before_build do |product|	
			product = Factory.build(:product, :name => "race bike")
			product.user = Factory.build(:user, :email => "air@plane.com", :password => "something")
			product.comments = Factory.build(:comments, :rating => 1, :user => @user, :body => "Aweful bike!")
			product.comments = Factory.build(:comments, :rating => 3, :user => @user, :body => "Ok bike")
			product.comments = Factory.build(:comments, :rating => 5, :user => @user, :body => "Awesome bike!") 
		end
		
		it "returns the average rating of all comments" do
			expect(@product.average_rating).to eq 3
		end
		
		context "When creating a new product" do

		before_build do 
			product = Factory.build(:product, :description => "This is a fast bike")
		end

		it "not valid without a name" do
			expect(@product).not_to be_valid
		end
	end	

end



