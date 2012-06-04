module DebugHelpers
  def pause_page
    puts
    puts "Press enter to continue"
    $stdin.gets
  end
end

When /^I pause the page$/ do
  pause_page
end

After do |scenario|
  if scenario.failed? && ENV["PAUSE"]
    pause_page
  end
end

World(DebugHelpers)
