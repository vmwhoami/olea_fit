# frozen_string_literal: true

class User < ApplicationRecord
  after_initialize :downcase_usename

  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 50 }
  validates :fullname, presence: true , length: { minimum: 6, maximum: 50 }

  has_many :opinions, class_name: 'Opinion', foreign_key: 'author_id'

  # These are in the followings in the followings table
  has_many :followings, class_name: 'Following', foreign_key: 'follower_id'
  # These are the users
  has_many :followed_persons, through: :followings, source: :followed
  # These are in the followings in the followings table
  has_many :following_folks, class_name: 'Following', foreign_key: 'followed_id'

  has_many :followers, through: :following_folks, source: :follower

  def downcase_usename
    
    self.username = self.username.downcase unless self.username.nil?
  end
end
