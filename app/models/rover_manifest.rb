class RoverManifest < ApplicationRecord
  has_many :cameras
  # :id,:name, :landingDate,:launchDate,:status,:maxSol,:maxDate, :portrait, :totalPhotos  [SERIALIZER]
end
