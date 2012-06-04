require 'spec_helper'

describe Shout do
  it "returns the .current shouts" do
    old_shout = create(:shout)
    new_shout = create(:shout)
    Shout.current.should == [new_shout, old_shout]
  end
end
