class CommentSerializer < ActiveModel::Serializer

  attributes :id, :opinion
  has_one :user, except: [:comments, :posts]
  has_one :post, except: [:comments, :user]

end
