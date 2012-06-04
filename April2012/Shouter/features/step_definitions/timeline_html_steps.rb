Then /^I can see the following timeline:$/ do |table|
  shouts = all(".shout")
  table.raw.each_with_index do |row, i|
    shout_text = row[0]
    shouts[i].should have_content(shout_text)
  end
end
