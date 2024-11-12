require 'rails_helper'

RSpec.describe User, type: :model do
  context 'User validations' do
    it 'Username should be present' do
      u = User.new(fullname: 'Test User')
      expect(u.valid?).to eq(false)
    end

    it 'Full name should be present' do
      u = User.new(username: 'User')
      expect(u.valid?).to eq(false)
    end

    it 'Full name should be present' do
      u = User.new(username: 'User', fullname: 'Test User')
      expect(u.valid?).to eq(true)
    end

    it 'Username should be longer than 3 characters' do
      name = 'u' * 2
      u = User.new(username: name.to_s, fullname: 'Test User')
      expect(u.valid?).to eq(false)
    end

    it 'Username should not be longer than 50 characters' do
      name = 'u' * 51
      u = User.new(username: name.to_s, fullname: 'Test User')
      expect(u.valid?).to eq(false)
    end
  end
end

RSpec.describe User, type: :model do
  before(:each) do
    @user_one = User.create!(username: 'user_one', fullname: 'user One')
    @user_two = User.create!(username: 'user_two', fullname: 'user Two')
    @user_three = User.create!(username: 'user_three', fullname: 'user Three')
    @f = @user_one.followings.new(followed: @user_two)
  end
  context 'User must follow and be followed' do
    it 'has to be able to follow another user' do
      expect(@f.valid?).to eq(true)
    end
    it 'user follers should return followers of a user' do
      @f.save!
      a = @user_three.followings.new(followed: @user_two)
      a.save!
      expect(@user_two.followers.first).to eq(@user_one)
      expect(@user_two.followers.last).to eq(@user_three)
    end

    it 'user followed_persons should return the user it follows' do
      @f.save!
      expect(@user_one.followed_persons.first).to eq(@user_two)
    end
  end
end
