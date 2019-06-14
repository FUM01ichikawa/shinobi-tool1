class OcrImage < ApplicationRecord
 
  #バリデーション
 validates :name, presence: true
  
 # 画像アップローダー
 mount_uploader :name, ImageUploader

end
