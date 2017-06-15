class UserSerializer < ActiveModel::Serializer
  attributes :id, :metric, :email
  has_many :birds
end
