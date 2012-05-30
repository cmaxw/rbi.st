require 'spec_helper'

describe Link do
  it "creates a path if one doesn't exist" do
    srand(10)
    link = Link.new(:url => "http://google.com")
    link.path.should be_nil
    link.save
    link.path.should == "J9kPAx"
  end
end
