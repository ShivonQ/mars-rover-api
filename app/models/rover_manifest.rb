class RoverManifest < ApplicationRecord
  has_many :cameras
  has_many :images
  # :id,:name, :landingDate,:launchDate,:status,:maxSol,:maxDate, :portrait, :totalPhotos  [SERIALIZER]
end
