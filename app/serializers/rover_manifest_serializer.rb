class RoverManifestSerializer < ActiveModel::Serializer
  attributes :id,:name, :landingDate,:launchDate,:status,:maxSol,:maxDate, :portrait, :totalPhotos
end
