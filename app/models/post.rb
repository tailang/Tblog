class Post < ActiveRecord::Base
  attr_accessible :body, :title, :tag_list
  acts_as_taggable
  acts_as_commentable
  default_scope :order => 'id DESC'
end
