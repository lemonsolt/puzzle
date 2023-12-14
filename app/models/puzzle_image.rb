class PuzzleImage < ApplicationRecord

  has_one_attached :image
  belongs_to :user
  has_many :comments, dependent: :destroy
  
  def image_or_empty
    if self.image.attached? == false
      return "noimage_camera.jpg"
    else
      return image
    end
  end
end
