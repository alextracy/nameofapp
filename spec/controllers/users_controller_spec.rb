require 'rails_helper'

describe UsersController, :type => :controller do
	
	before do
		@user = User.create(email: "peter@example.com", password: "1234567890")
		@user2 = User.create(email: "john@example.com", password: "1234567890")
	end

	describe 'GET #show' do
		context "User is logged in" do
			before do
				sign_in @user
			end
			it "loads correct user details" do
				get :show, id: @user
				expect(response).to have_http_status(200)
				expect(assigns(:user)).to eq @user
			end
		end

		context "First user is redirected" do
			it "redirects to login" do
				get :show, id: @user2
				expect(response).to redirect_to(root_path)
			end
		end

		context "No user is logged in" do
			it "redirects to login" do
				get :show, id: @user
				expect(response).to redirect_to(root_path)
			end
		end
	end

end