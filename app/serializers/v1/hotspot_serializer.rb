class V1::HotspotSerializer < ActiveModel::Serializer
  attributes :id, :name, :latitude, :longitude, :description
end
