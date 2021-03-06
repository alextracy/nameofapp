require 'rails_helper'

RSpec.describe PaymentsController, :type => :controller do
	render_views

  describe "POST #create" do
    it "renders the create template" do
		expect(response).to render_template(:create)
		expect(response).to redirect_to(root_path)
  	end
  end
end
