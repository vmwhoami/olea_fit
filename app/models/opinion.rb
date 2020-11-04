class Opinion < ApplicationRecord
  validates :text, presence: true, length: { minimum: 1, maximum: 250 }
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  has_many :likes, dependent: :destroy

  scope :fresh_opinions, -> { order('created_at DESC') }

  def self.merged_o(author)
    merged = nil
    #   current_user_opinions  = Opinion.find_by_author_id(author.id)
    #   own =   Opinion.find_by_author_id(author.id)
    #  if current_user_opinions && own
    #   merged = current_user_opinions.author.followed_persons.ids
    #   merged << own.author_id
    #  elsif own
    #   merged = own.author_id
    #  elsif current_user_opinions
    #   merged = current_user_opinions.author.followed_persons.ids

    #  else

    #  end
    merged = User.find_by_id(author.id).followed_persons.ids if User.find_by_id(author.id).followed_persons
    merged << Opinion.find_by_author_id(author.id).author_id if Opinion.find_by_author_id(author.id)
    # own =  Opinion.find_by_author_id(author.id).author_id
    Opinion.where('author_id in (?)', merged).order('created_at DESC')
  end
end
