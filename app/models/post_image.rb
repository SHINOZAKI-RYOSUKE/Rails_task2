class PostImage < ApplicationRecord
  belongs_to :user
  attachment :image # ここを追加（_idは含めません）
  
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  # バリデーション（これがないと投稿できません！）っていう記述！（一個に対して一行必要！）※今回は二つなので二行
  validates :shop_name, presence: true
  validates :image, presence: true

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  
end
