class Comment < ActiveRecord::Base

  include ActsAsCommentable::Comment

  has_many_kindeditor_assets :attachments, :dependent => :destroy
  belongs_to :commentable, :polymorphic => true

  default_scope :order => 'created_at DESC'

  # NOTE: install the acts_as_votable plugin if you
  # want user to vote on the quality of comments.
  #acts_as_voteable

  # NOTE: Comments belong to a user
  belongs_to :user

  validates :user, :presence => true
  validates :comment, :presence => true

  attr_accessible :comment, :title
end
