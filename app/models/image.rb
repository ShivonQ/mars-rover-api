class Image < ApplicationRecord
  belongs_to :rover_id
  belongs_to :cam_id
end
