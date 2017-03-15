class FaveImgSerializer < ActiveModel::Serializer
  attributes :id,:rover,:cam_name,:image_date,:url
  belongs_to :user
end
