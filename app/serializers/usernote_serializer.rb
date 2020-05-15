class UsernoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :contents, :tag, :user_id
  belongs_to :user
end
