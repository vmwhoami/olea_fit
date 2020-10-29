# frozen_string_literal: true

class User < ApplicationRecord
  after_initialize :downcase_usename, :set_default_img

  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 50 }
  validates :fullname, presence: true , length: { minimum: 6, maximum: 50 }

  has_many :opinions, class_name: 'Opinion', foreign_key: 'author_id', dependent: :destroy

 
  # These are in the followings in the followings table
  has_many :followings, class_name: 'Following', foreign_key: 'follower_id', dependent: :destroy
  # These are the users
  has_many :followed_persons, through: :followings, source: :followed, dependent: :destroy
  # These are in the followings in the followings table
  has_many :following_folks, class_name: 'Following', foreign_key: 'followed_id', dependent: :destroy

  has_many :followers, through: :following_folks, source: :follower

  def self.ordered_users
    @ordered_users = User.all.sort{|a,b| a.followers.count <=> b.followers.count}
    @ordered_users.reverse[0..5]
   
  end
  def downcase_usename
    self.username = self.username.downcase unless self.username.nil?
  end

  def set_default_img
    self.photo||= "//via.placeholder.com/140x100"
    self.coverimage||= "//via.placeholder.com/140x100"
  end
end
