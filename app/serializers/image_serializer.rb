class ImageSerializer < ActiveModel::Serializer
  attributes :id, :rover_manifest, :camera, :date
  has_one :rover_id
  has_one :cam_id
end
