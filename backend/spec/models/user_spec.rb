require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'is invalid without a username' do
      user = User.new(fullname: 'Test User')
      expect(user.valid?).to eq(false)
    end

    it 'is invalid without a fullname' do
      user = User.new(username: 'User')
      expect(user.valid?).to eq(false)
    end

    it 'is valid with both username and fullname and password' do
      user = User.new(username: 'User', fullname: 'Test User', password: 'password')
      expect(user.valid?).to eq(true)
    end

    it 'is invalid if username is shorter than 3 characters' do
      user = User.new(username: 'uu', fullname: 'Test User', password: 'password')
      expect(user.valid?).to eq(false)
    end

    it 'is invalid if username is longer than 50 characters' do
      user = User.new(username: 'u' * 51, fullname: 'Test User', password: 'password')
      expect(user.valid?).to eq(false)
    end
  end

  describe 'followings associations' do
    # Create users to test follow relationships.
    let!(:user_one)   { User.create!(username: 'user_one', fullname: 'User One', email: "supermail@mail.com",  password: 'password') }
    let!(:user_two)   { User.create!(username: 'user_two', fullname: 'User Two', email: "supupermail@mail.com",  password: 'password') }
    let!(:user_three) { User.create!(username: 'user_three', fullname: 'User Three',email: "poop@mail.com" ,password: 'password') }
    
    let(:following) { user_one.followings.new(followed: user_two) }

    it 'allows a user to follow another user' do
      expect(following.valid?).to eq(true)
    end

    it 'returns the correct followers for a user' do
      following.save!
      another_following = user_three.followings.new(followed: user_two)
      another_following.save!
      
      # Depending on the order of association, you can test the array order:
      expect(user_two.followers.first).to eq(user_one)
      expect(user_two.followers.last).to eq(user_three)
    end

    it 'returns the correct followed persons for a user' do
      following.save!
      expect(user_one.followed_persons.first).to eq(user_two)
    end
  end
end
