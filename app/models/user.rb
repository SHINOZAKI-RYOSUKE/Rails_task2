class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  attachment :profile_image
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         has_many :post_images, dependent: :destroy
         has_many :post_comments, dependent: :destroy
         has_many :favorites, dependent: :destroy
         
         
         
end
