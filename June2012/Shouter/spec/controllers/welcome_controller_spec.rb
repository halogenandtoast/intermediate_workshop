require 'spec_helper'
require 'clearance/testing'

describe WelcomeController do
  it "responds with success when not signed in" do
    get :index
    response.should be_success
  end

  it "redirects to the dashboard when signed in" do
    sign_in
    get :index
    response.should redirect_to(dashboard_path)
  end
end
