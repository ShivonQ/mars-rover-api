class RoverManifestSerializer < ActiveModel::Serializer
  attributes :id,:name, :landing_date,:launch_date,:status,:max_date, :portrait,:miniPortrait, :total_photos,:max_sol
  has_many :cameras
  has_many :image
end
