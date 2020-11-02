# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'UserFollowingUnfollowings', type: :feature do
  before(:each) do
    @test_one = User.create(username: 'test_one', fullname: 'Test UserOne')
    @test_Two = User.create(username: 'test_Two', fullname: 'Test UserTwo')
    @test_three = User.create(username: 'test_three', fullname: 'Test UserThree')
  end

  scenario 'User follows another user' do
    visit '/'
    fill_in 'Username', with: 'test_one'
    click_button 'Login'
    expect(page).to  have_link('Test UserTwo')
    expect(page).to  have_link('Test UserOne')
    expect(page).to  have_link('Test UserThree')
  end

  scenario 'There should be a button to follow another user' do
    visit '/'
    fill_in 'Username', with: 'test_one'
    click_button 'Login'
    click_link 'Test UserTwo'
    expect(page).to  have_link('Follow')
    click_link 'Follow'
    expect(@test_Two.followers.count).to eq(1)
    expect(page).to have_link('Unfollow')
  end

  scenario 'There should be a button to unfollow another user' do
    visit '/'
    fill_in 'Username', with: 'test_one'
    click_button 'Login'
    click_link 'Test UserTwo'
    click_link 'Follow'
    click_link 'Unfollow'
    expect(@test_Two.followers.count).to eq(0)
  end
end
