class Advertisement < ApplicationRecord

  with_options presence: true do
    validates :img_url
    validates :af_link
    validates :rate_id
    validates :company_id
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :rate
  has_many :company

end
