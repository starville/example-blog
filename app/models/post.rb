class Post
  include Mongoid::Document
  field :title, type: String
  field :body, type: String
  field :tags, type: Array, default: []
  embeds_many :comments
  #has_many :comments
end
