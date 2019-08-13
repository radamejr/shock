class Staticshock < ApplicationRecord
  validates :comment, presence: true

  mount_uploader :picture, PictureUploader

end
