Given /^"([^"]*)" is following "([^"]*)"$/ do |follower_email, followed_user_email|
  follower = User.find_by_email(follower_email)
  followed_user = User.find_by_email(followed_user_email)
  follower.follow(followed_user)
end
