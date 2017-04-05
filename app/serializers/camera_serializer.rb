class CameraSerializer < ActiveModel::Serializer
  attributes :id, :name, :fullName, :rover_manifest
  has_one :rover_manifest
end
