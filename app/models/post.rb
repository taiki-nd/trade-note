class Post < ApplicationRecord

  with_options presence: true do
    validates :title
    validates :content
    validates :category_id
    validates :keyword1
    validates :keyword2
    validates :keyword3
    validates :description
  end

  with_options numericality: { other_than: 1, message: 'を選択してください' } do
    validates :category_id
  end

  belongs_to :user
  has_many :comment_posts, dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category, optional: true
  belongs_to :status, optional: true
end
