class Picture < ApplicationRecord
  belongs_to :figure, optional: true
  mount_uploader :photo, PhotoUploader
end
