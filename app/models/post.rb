class Post < ApplicationRecord

  with_options presence: true do
    validates :title
    validates :content
    validates :category_id
  end

  with_options numericality: { other_than: 1, message: 'を選択してください' } do
    validates :cotegory_id
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category, optional: true
end
