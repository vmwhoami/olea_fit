require 'rails_helper'

RSpec.describe Opinion, type: :model do
  describe 'validations' do
    context 'when the opinion is missing an author' do
      it 'is not valid' do
        opinion = Opinion.new(text: 'Hello world')
        expect(opinion).not_to be_valid
      end
    end

    context 'with a valid user' do
      let(:user) { User.create!(username: 'user_one', fullname: 'User One', password: 'filosofia', email: 'whatanemail@what.com') }

      it 'requires the opinion text to be at least 1 character long' do
        opinion = user.opinions.build(text: '')
        expect(opinion).not_to be_valid
      end

      it 'does not allow opinion text longer than 250 characters' do
        opinion = user.opinions.build(text: 'o' * 251)
        expect(opinion).not_to be_valid
      end

      it 'returns the most recently created opinion first in fresh_opinions' do
        first_text = 'o' * 12
        second_text = 'i' * 20
        user.opinions.create!(text: first_text)
        user.opinions.create!(text: second_text)
        expect(Opinion.fresh_opinions.first.text).to eq(second_text)
      end
    end
  end
end
