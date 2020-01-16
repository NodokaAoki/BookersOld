class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :books, dependent: :destroy
  validates :name, uniqueness: true
  attachment :profile_image

  #deviseでemailを不要にする
  def email_required?
  	false
  end
  def email_changed?
  	false
  end
end
