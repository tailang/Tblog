#encoding: utf-8
class CommentsController < ApplicationController
	def create
    @comment = commentable_record.comments.create(params[:comment])
    @comment.user = current_user #当前用户

      if @comment.save
        redirect_to commentable_record, notice: '创建评论成功'
      else
        redirect_to commentable_record, notice: '创建评论失败'
      end
  end
  
  def destroy
    @comment = commentable_record.comments.find(params[:id])
    @comment.destroy
 
    redirect_to commentable_record, :notice => '成功删除评论 '
   end

  protected

  def commentable_record
    Post.find(params[:post_id])
  end
end
