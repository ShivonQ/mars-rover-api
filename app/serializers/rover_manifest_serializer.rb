class RoverManifestSerializer < ActiveModel::Serializer
  attributes :id,:name, :landing_date,:launch_date,:status,:max_sol,:max_date, :portrait, :total_photos
end
