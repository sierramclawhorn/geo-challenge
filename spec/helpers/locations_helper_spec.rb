require 'rails_helper'

describe LocationsHelper do
	describe "#given_address" do
    	it "returns a string" do
    		assign(:address, "1770 Union St, San Francisco, CA 94115")
    		helper.given_address.should eql("1770 Union St, San Francisco, CA 94115")
    	end
  	end
end

