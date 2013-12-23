require 'spec_helper'

describe Spree::Api::SearchesController do
  it "should return lightweight serialized search results" do
    @products =  FactoryGirl.create_list :product, 2
    ThinkingSphinx.expects(:search).returns
    spree_get :index, q: "query string"

    results   = JSON.parse response.body
    results.length.should eql 2
    results.first.id.should eql @products.first.id
    results.firls.url.should eql controller.url_for(@products.first)
  end
end
