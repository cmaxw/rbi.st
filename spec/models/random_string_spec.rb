require 'spec_helper'

describe RandomString do
  it "generates a Random String of length provided" do
    srand(10)
    RandomString.create.should == "J9kPAx"
  end
end
