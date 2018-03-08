class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :director, :actor
end
