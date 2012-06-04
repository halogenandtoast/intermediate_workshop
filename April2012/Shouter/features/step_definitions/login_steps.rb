Given /^I am signed in as "([^"]*)"$/ do |user_email|
  visit "/sign_in"
  fill_in "Email", with: user_email
  fill_in "Password", with: "password"
  click_button "Sign in"
end
