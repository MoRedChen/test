class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :address, presence: true
  validates :phone, format: { with: /\A\d{10}\z/, message: "只允許台灣電話號碼（10位數字）" }
end
