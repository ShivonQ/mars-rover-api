class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
#   :password, I really doubt I am supposed to be sending this data back in the API
end
