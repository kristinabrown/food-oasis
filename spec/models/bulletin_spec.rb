require 'rails_helper'

RSpec.describe Bulletin, type: :model do
  context 'with valid params' do
    let(:bulletin){
      Bulletin.new(user_id: 1,
                   body: "hey")
    }
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
      # let(:mapmarker)

      it 'is valid' do
        expect(bulletin).to be_valid
      end

      it 'has a map marker' do
        expect(bulletin).to respond_to(:map_marker)
      end

  end
end
