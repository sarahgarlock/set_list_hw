require 'rails_helper'

RSpec.describe Artist do
  it {should have_many :songs}

  describe 'instance method' do
    describe '#average_song_length' do
      before :each do
        @prince = Artist.create!(name: 'Prince')
        @purple = @prince.songs.create!(title: 'Purple Rain', length: 836, play_count: 3836)
        @beret = @prince.songs.create!(title: 'Raspberry Beret', length: 326, play_count: 89373)
        @other_song = @prince.songs.create!(title: 'More prince songs', length: 1, play_count: 3836)

      end

      it 'returns the average song length' do
        expect(@prince.average_song_length.round(2)).to eq(387.67)
      end
    end
  end
end