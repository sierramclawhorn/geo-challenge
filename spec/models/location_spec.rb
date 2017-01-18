require 'rails_helper'

RSpec.describe Location, :type => :model do
  subject { described_class.new(store_name: "Crystal",
  								store_location: "SWC Broadway & Bass Lake Rd", 
  								address: "5537 W Broadway Ave", 
  								city: "Crystal", state: "MN", 
  								zip_code: "55428-3507", 
  								lat: 45.0521539, 
  								lng: -93.364854, 
  								county: "Hennepin County") }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
  end
end