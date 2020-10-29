# frozen_string_literal: true

class Opinion < ApplicationRecord
  validates :text, presence: true, length: { minimum: 3, maximum: 250 }
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  scope :fresh_opinions, -> { order('created_at DESC') }

  scope :subscribed, ->(followers) { where author_id: followers } 
  scope :own, ->(user) { where author_id: user }
   
   def self.merged_opinions(own,subscribed)
    self.subscribed(subscribed) + self.own(own)
   end
  
   def self.merged_o(author)
    subscribed = Opinion.find_by_author_id(author.id).author.followed_persons.ids
    own =  Opinion.find_by_author_id(author.id).author_id
    merged = subscribed << own
    Opinion.where('author_id in (?)', merged ).order('created_at DESC')
   end
end

#Solution???
# 
# Opinion.find_by_author_id(20).author.followed_persons.ids
# def self.all_gifts(user_id)
#   follower_ids = User.find(user_id).following_users.pluck(:id)
#   Gift.where('giver_id in (?) OR receiver_id in (?)', follower_ids, follower_ids).uniq
# end
