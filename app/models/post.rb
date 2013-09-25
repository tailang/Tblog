class Post < ActiveRecord::Base
  attr_accessible :body, :title, :tag_list

  has_many_kindeditor_assets :attachments, :dependent => :destroy
  acts_as_taggable
  acts_as_commentable
  default_scope :order => 'id DESC'
  
  validates :title, :presence => true
  validates :body, :presence => true
end
