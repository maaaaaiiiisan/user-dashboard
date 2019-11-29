class UsersController < ApplicationController
  before_action :fetch_userList, only: [:update, :edit, :destroy]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if params[:back]
      render :new
    elsif @user.save
      redirect_to root_path, notice:"新規登録が完了しました"
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to root_path, notice:"修正が完了しました"
    else
      render 'edit'
    end
  end

  def confirm
    @user = User.new(user_params)
  end

  def destroy
    @user.destroy
    redirect_to root_path, notice:"削除が完了しました"
  end

  private

  def fetch_userList
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(
      :name,
      :twitterId,
      :country,
      :position,
      :date,
      :twitterLink,
      :twitterArticle,
      :memo
    )
  end
end
