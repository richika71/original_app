class Article < ApplicationRecord
    has_many_attached :images
    mount_uploader :image, ImageUploader
    belongs_to :user
    has_many :users


    def self.search(search)
        if search != ""
          Article.where(['ingredient LIKE(?) OR content LIKE(?) OR category LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%"])
        else
          Article.includes(:user).order('created_at DESC')
        end
    end
end
