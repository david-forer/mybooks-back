class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :comment
end
