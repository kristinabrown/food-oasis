require 'rails_helper'

RSpec.describe User, type: :model do
  context 'with valid params' do
    let(:user){
      User.new(first_name: "Bill",
               last_name: "Williams",
               street_address: "123 Main St",
               city: "City",
               state: "ST",
               zip_code: "12345",
               email: "bill@williams.gov"
               )
    }
    it 'is valid' do
      expect(user).to be_valid
    end
    it 'has bulletins' do
      expect(user.bulletins).to eq([])
    end
  end
end
