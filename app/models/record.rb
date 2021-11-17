class Record < ApplicationRecord

  with_options presence: true do
    validates :date
    validates :hour_id
    validates :pair_id
    validates :ashi_id
    validates :price_renge, numericality: true
    validates :entry_basis
    validates :method_id
    validates :result_section_id
    validates :result_content
  end

  with_options numericality: { other_than: 1, message: 'を選択してください' } do
    validates :hour_id
    validates :pair_id
    validates :ashi_id
    validates :method_id
    validates :result_section_id
  end

  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :hour
  belongs_to :ashi
  belongs_to :pair
  belongs_to :kind
  belongs_to :line_main
  belongs_to :line_sub
  belongs_to :indi_main
  belongs_to :indi_sub
  belongs_to :method
  belongs_to :result_section

end
