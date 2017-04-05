class RoverManifestSerializer < ActiveModel::Serializer
  attributes :id,:name, :landing_date,:launch_date,:status,:max_date, :portrait, :total_photos,:max_sol
  has_many :cameras
end
