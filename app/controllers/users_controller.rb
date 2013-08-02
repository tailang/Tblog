#encoding: utf-8
class UsersController < ApplicationController
	def show
	  @user = User.find(params[:id])
	end

	def edit
	  @user = User.find(params[:id])
	  unless @user == current_user
	  	redirect_to root_path, notice: "你没有权限"
	  end
	end

	def update
	  @user = User.find(params[:id])
	  if @user.update_attributes(params[:user])
	  	redirect_to @user, notice: "设置成功"
	  else
	  	render action: "edit"
	  end
	end
end
