# app/models/sessions.rb
class Session < ApplicationRecord
  belongs_to :user
  before_create :generate_token # Here call

  private

  # Here implement, generate the token as you wish.
  def generate_token
    self.token = Digest::SHA1.hexdigest([Time.now, rand].join)
  end
end
