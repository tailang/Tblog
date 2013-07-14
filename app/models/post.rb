class Post < ActiveRecord::Base
  attr_accessible :body, :title
  acts_as_commentable
  default_scope :order => 'id DESC'
end
