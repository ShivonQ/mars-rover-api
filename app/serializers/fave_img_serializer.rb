class FaveImgSerializer < ActiveModel::Serializer
  attributes :id,:rover,:image_date,:url
  belongs_to :user
end
