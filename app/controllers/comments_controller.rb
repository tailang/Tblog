#encoding: utf-8
class CommentsController < ApplicationController
	def create
      @comment = commentable_record.comments.create(params[:comment])
      @comment.user = current_user #当前用户

      respond_to do |format|
        if @comment.save
          format.html {redirect_to commentable_record, notice: '创建评论成功'}
          format.json {render json: @comment, status: :created, location: commentable_record}
        else
          format.html { render action: :new }
          format.json { render json: @comment.errors, status: :unprocessable_entity }  
        end
      end
    end

    protected

    def commentable_record
      Post.find(params[:post_id])
    end
end
