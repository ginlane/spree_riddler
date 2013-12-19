require 'spec_helper'
require 'support/sphinx_environment'

describe "Spree::Product Index" do
  sphinx_environment :spree_products do
    before :each do
      # index some shit, yo.
    end
    it "should index some shit. Yo."
  end
end
