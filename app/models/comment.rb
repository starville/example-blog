class Comment
  include Mongoid::Document
  field :author, type: String
  field :body, type: String  
  embedded_in :post
  #belongs_to :post
end
