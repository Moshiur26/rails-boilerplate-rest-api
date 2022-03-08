class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :phone, :email, :password, :password_confirmation, presence: true
  validates :email, :phone, uniqueness: true

  enum role: { admin: 0, super_admin: 1 }
end
