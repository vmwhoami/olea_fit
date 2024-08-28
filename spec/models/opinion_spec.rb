require 'rails_helper'

RSpec.describe Opinion, type: :model do
  context 'Opinion validations' do
    it 'Author should be present' do
      u = Opinion.new(text: 'Hello world')
      expect(u.valid?).to eq(false)
    end

    before(:each) do
      @user_one = User.create!(username: 'user_one', fullname: 'user One')
    end

    it 'Opinion should be at least 1 char long' do
      o = ''
      op = @user_one.opinions.create(text: o)
      expect(op.valid?).to eq(false)
    end

    it 'Opinion should not be longer than 250 char' do
      o = 'o' * 251
      op = @user_one.opinions.create(text: o)
      expect(op.valid?).to eq(false)
    end

    it 'fresh_opinions should display the lest opinion created' do
      o = 'o' * 12
      u = 'i' * 20
      @user_one.opinions.create(text: o)
      @user_one.opinions.create(text: u)
      expect(Opinion.fresh_opinions.first.text).to eq(u)
    end
  end
end
