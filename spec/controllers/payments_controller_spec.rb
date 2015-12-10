require 'rails_helper'

RSpec.describe PaymentsController, type: :controller do

  describe "POST #create" do
    it "renders the create template" do
		expect(response).to render_template("create")
  	end
  end
end
