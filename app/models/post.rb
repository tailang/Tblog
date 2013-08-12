class Post < ActiveRecord::Base
  has_many_kindeditor_assets :attachments, :dependent => :destroy
  attr_accessible :body, :title, :tag_list
  acts_as_taggable
  acts_as_commentable
  default_scope :order => 'id DESC'
  validates :title, :presence => true
  validates :body, :presence => true
end
