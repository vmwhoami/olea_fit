# frozen_string_literal: true

class Like < ApplicationRecord
  validates :user_id, uniqueness: { scope: :opinion_id }
  belongs_to :opinion, class_name: 'Opinion', foreign_key: 'opinion_id'
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
end
