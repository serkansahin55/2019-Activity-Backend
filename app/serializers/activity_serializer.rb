class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url
  has_many :comments
end
