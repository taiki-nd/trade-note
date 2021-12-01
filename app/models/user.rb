class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true, uniqueness: true, length: { minimum: 3, maximum: 25 }

  has_many :records, dependent: :destroy
  has_many :comment_records, dependent: :destroy
  has_many :comment_posts, dependent: :destroy

  def to_param
    return self.nickname
  end

end
