class FaveImgSerializer < ActiveModel::Serializer
  attributes :id,:rover,:imageDate,:url
  belongs_to :user
end
