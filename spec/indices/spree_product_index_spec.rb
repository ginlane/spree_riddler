require 'spec_helper'

describe "Spree::Product Index" do
  before :all do
    ThinkingSphinx::Test.start
  end

  after :all do
    ThinkingSphinx::Test.stop
  end

  before :each do
    FactoryGirl.create :product, name: "Fnord"
  end

  it "should index some shit. Yo." do

    Spree::Product.should be_indexed

  end
end
