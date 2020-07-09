class Admins::UsersController < ApplicationController
	layout 'admins'
	before_action :authenticate_admin!

	def index
		@users = User.all.page(params[:page]).per(10)
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def search
	end

	def update
		@user = User.find(params[:id])
      if @user.update(user_params)
        flash[:notice] = "更新完了"
        redirect_to admins_user_path(@user.id)
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
