require 'spec_helper'

describe Shout do
  it "returns #current shouts" do
    oldest_shout = create(:shout)
    newest_shout = create(:shout)
    Shout.current.to_a.should == [newest_shout, oldest_shout]
  end
end
