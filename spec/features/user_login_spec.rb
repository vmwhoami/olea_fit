# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'UserLogins', type: :feature do
  before(:each) do
    User.create(username: 'test_one', fullname: 'Test UserOne')
  end
  scenario 'User signs_in with a valid username' do
    visit '/'
    fill_in 'Username', with: 'test_one'
    click_button 'Login'
    expect(current_path).to eq(root_path)
  end

  scenario "User can't sign_in with non existing username" do
    visit '/'
    fill_in 'Username', with: 'test_two'
    click_button 'Login'
    expect(current_path).to eq(login_path)
  end
end
