class User < ApplicationRecord
  include UserPhotos

  has_secure_password
  validates :email, presence: true, uniqueness: true
  normalizes :email, with: ->(e) { e.strip.downcase }
  after_initialize :downcase_usename, :set_default_img
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 50 }
  has_many :opinions, class_name: 'Opinion', foreign_key: 'author_id', dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :followings, class_name: 'Following', foreign_key: 'follower_id', dependent: :destroy
  has_many :followed_persons, through: :followings, source: :followed, dependent: :destroy
  has_many :following_folks, class_name: 'Following', foreign_key: 'followed_id', dependent: :destroy
  has_many :followers, through: :following_folks, source: :follower

  scope :fresh_users, -> { order('created_at DESC') }

  def self.most_followed
    arr = Following.pluck(:followed_id)
    x = arr.each_with_object(Hash.new(0)) { |e, h| h[e] += 1 }
    a = x.sort_by { |_name, followers| followers }.reverse
    b = a.map { |array| array[0] }
    @most_followed = User.find([b])
  end

  def downcase_usename
    self.username = username.downcase unless username.nil?
  end

  def set_default_img
    self.photo ||= pick_photo
    self.coverimage ||= pick_cover
  end
end
