class ImageSerializer < ActiveModel::Serializer
  attributes :id, :rover_manifest, :camera, :date, :url
  has_one :rover_manifest
  has_one :camera
end
