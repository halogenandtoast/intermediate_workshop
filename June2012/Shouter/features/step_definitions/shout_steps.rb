Given /^I shouted "([^"]*)"$/ do |shout_text|
  user = create(:user)
  visit "/sign_in"
  fill_in "Email", with: user.email
  fill_in "Password", with: 'password'
  click_button "Sign in"
  fill_in "text_medium[body]", with: shout_text
  within "#new_text_medium" do
    click_button "Shout"
  end
end

Then /^I have a "([^"]*)" shout$/ do |shout_text|
  within "[data-role='shout']" do
    page.should have_content(shout_text)
  end
end
