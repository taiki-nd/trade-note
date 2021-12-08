class Record < ApplicationRecord

  with_options presence: true do
    validates :date
    validates :pair_id
    validates :ashi_id
    validates :price_renge, numericality: true
    validates :entry_basis
    validates :result_section_id
    validates :result_content
  end

  with_options numericality: { other_than: 1, message: 'を選択してください' } do
    validates :pair_id
    validates :ashi_id
    validates :result_section_id
  end

  FILE_NUMBER_LIMIT = 3

  validate :validate_number_of_files

  belongs_to :user
  has_many_attached :images
  has_many :comment_records, dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :hour, optional: true
  belongs_to :ashi, optional: true
  belongs_to :pair, optional: true
  belongs_to :kind, optional: true
  belongs_to :line_main, optional: true
  belongs_to :line_sub, optional: true
  belongs_to :indi_main, optional: true
  belongs_to :indi_sub, optional: true
  belongs_to :order, optional: true
  belongs_to :result_section, optional: true

  private

  def validate_number_of_files
    return if images.length <= FILE_NUMBER_LIMIT
    errors.add(:images, "に添付できる画像は#{FILE_NUMBER_LIMIT}件までです。")
  end

end
