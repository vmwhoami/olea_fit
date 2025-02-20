# spec/requests/api/v1/auth_spec.rb
require 'rails_helper'

RSpec.describe 'Auth API', type: :request do
  let!(:user) { User.create!(username: 'testuser', email: 'test@example.com', password: 'password') }

  describe 'POST /api/v1/login' do
    context 'with valid credentials' do
      it 'returns a JWT token and user info' do
        post '/api/v1/login', params: { email: 'test@example.com', password: 'password' }
        expect(response).to have_http_status(:ok)

        json = JSON.parse(response.body)
        expect(json).to have_key('jwt')
        expect(json['user']['id']).to eq(user.id)
        expect(json['user']['email']).to eq(user.email)
      end
    end

    context 'with invalid credentials' do
      it 'returns an error message' do
        post '/api/v1/login', params: { email: 'test@example.com', password: 'wrongpassword' }
        expect(response).to have_http_status(:unauthorized)

        json = JSON.parse(response.body)
        expect(json).to have_key('error')
        expect(json['error']).to eq('Invalid email or password')
      end
    end
  end

  describe 'POST /api/v1/verify-token' do
    context 'with a valid token' do
      it 'verifies the token and returns user info' do
        # First, login to obtain a valid token
        post '/api/v1/login', params: { email: 'test@example.com', password: 'password' }
        token = JSON.parse(response.body)['jwt']

        # Then, verify the token
        post '/api/v1/verify-token', headers: { 'Authorization' => "Bearer #{token}" }
        expect(response).to have_http_status(:ok)

        json = JSON.parse(response.body)
        expect(json['message']).to eq('Token is valid')
        expect(json['user']['id']).to eq(user.id)
      end
    end

    context 'with an invalid token' do
      it 'returns an error message' do
        post '/api/v1/verify-token', headers: { 'Authorization' => 'Bearer invalidtoken' }
        expect(response).to have_http_status(:unauthorized)

        json = JSON.parse(response.body)
        expect(json).to have_key('error')
        expect(json['error']).to eq('Invalid or expired token')
      end
    end
  end
end
