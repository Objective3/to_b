require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe String do
  it "should consider blank strings false" do
    ''.to_b.should == false
  end
  
  it "should consider strings equal to '0' as false" do
    '0'.to_b.should == false
  end
  
  it "should consider all other strings as true" do
    '12345'.to_b.should == true
  end
end

describe NilClass do
  it "should be false" do
    nil.to_b.should == false
  end
end

describe TrueClass do
  it "should be true" do
    true.to_b.should == true
  end
end

describe FalseClass do
  it "should be false" do
    false.to_b.should == false
  end
end

describe Object do
  it "should be true" do
    Object.new.to_b.should == true
  end
end

describe Numeric do
  it "should consider 0 false" do
    0.to_b.should == false
  end
  
  it "should consider 0.0 false" do
    (0.0).to_b.should == false
  end
  
  it "should consider all other numbers true" do
    1.to_b.should == true
    (1.5).to_b.should == true
  end
end
