class UserController < ApplicationController
  before_action :sign_in_required, only: [:show]

  def index
  end

  def show
    @user = current_user
    @userPosts = current_user.posts
  end
end
