require 'rails_helper'

RSpec.describe MapMarker, type: :model do
  context 'with valid params' do
    let(:mapmarker){
      MapMarker.new(bulletin_id: 1,
                    long_lat: "1, 2")
    }
    it 'is valid' do
      expect(mapmarker).to be_valid
    end

  end
end
