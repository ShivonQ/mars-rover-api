class CameraSerializer < ActiveModel::Serializer
  attributes :id, :name, :fullName, :rover_manifest
  belongs_to :rover_manifest
end
