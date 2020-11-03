class Opinion < ApplicationRecord
  validates :text, presence: true, length: { minimum: 1, maximum: 250 }
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  has_many :likes, dependent: :destroy

  scope :fresh_opinions, -> { order('created_at DESC') }


 
 
  def self.merged_o(author)
    begin
      subscribed  = Opinion.find_by_author_id(author.id).author.followed_persons.ids
      own =  Opinion.find_by_author_id(author.id).author_id
    rescue => exception 
      own = Opinion.all.limit(5)
    else
      merged = subscribed << own
    end
    # own =  Opinion.find_by_author_id(author.id).author_id
    Opinion.where('author_id in (?)', merged).order('created_at DESC')
  end



end
