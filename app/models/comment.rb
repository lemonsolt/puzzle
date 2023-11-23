class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :puzzle_image
end
