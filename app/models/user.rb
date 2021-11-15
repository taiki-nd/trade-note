class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, uniqueness: true, format: { with: /\A[a-zA-Z\d]+\z/ }, length: { minimum: 3, maximum: 25 }
end
