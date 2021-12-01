class CommentRecord < ApplicationRecord
  validates :comment, presence: true
  belongs_to :record
  belongs_to :user
end
