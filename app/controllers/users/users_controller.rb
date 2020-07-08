class Users::UsersController < ApplicationController
  layout 'users'
  before_action :authenticate_user!
  def show
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        flash[:notice] = "更新完了"
        redirect_to users_user_path(current_user.id)
      else
        render :edit
      end
  end

  private
  def user_params
    params.require(:user).permit(
      :name,
      :name_kana,
      :gender,
      :birthdat,
      :postcode,
      :prefecture_name,
      :address_city,
      :address_town,
      :address_street,
      :address_building,
      :telephone_number,
      :rank,
      :penalty,
      :active,
      :remark
      )
  end

end
