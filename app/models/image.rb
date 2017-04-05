class Image < ApplicationRecord
  belongs_to :rover_manifest
  belongs_to :camera
end
