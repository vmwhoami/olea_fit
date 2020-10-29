class Opinion < ApplicationRecord
  validates :text, presence: true, length: {minimum:3, maximum: 250}
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  scope :fresh_opinions, -> { order('created_at DESC').limit(6) }
 
 
end
