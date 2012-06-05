require 'spec_helper'

describe "users/show" do
  it "doesn't display the follow button if already following" do
    current_user = build_stubbed(:user)
    current_user.stub(can_follow?: false)
    view.stub(:current_user).and_return(current_user)
    assign(:shouts, [])
    assign(:user, create(:user))
    render
    Capybara.string(rendered).should have_no_css("input[type=submit][value=Follow]")
  end
end
