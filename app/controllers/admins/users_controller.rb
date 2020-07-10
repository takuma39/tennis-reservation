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

  def update
    @user = User.find(params[:id])
      if @user.update(user_params)
        flash[:notice] = "更新完了"
        redirect_to admins_user_path(@user.id)
      else
        render :edit
      end
  end

  def search

  @search_word = params[:search_word]
    if params[:search_type] == '氏名'
        case params[:search_method]
            when 'perfect_match' then
                @models = User.where("name LIKE?","#{params[:search_word]}").page(params[:page]).per(10)
            when "forward_match" then
                @models = User.where("name LIKE?","#{params[:search_word]}%").page(params[:page]).per(10)
            when "backend_match" then
                @models = User.where("name LIKE?","%#{params[:search_word]}").page(params[:page]).per(10)
            when "partial_match" then
                @models = User.where("name LIKE?","%#{params[:search_word]}%").page(params[:page]).per(10)
        end

    elsif params[:search_type] == 'フリガナ'
        case params[:search_method]
            when 'perfect_match' then
                @models = User.where("name_kana LIKE?","#{params[:search_word]}").page(params[:page]).per(10)
            when "forward_match" then
                @models = User.where("name_kana LIKE?","#{params[:search_word]}%").page(params[:page]).per(10)
            when "backend_match" then
                @models = User.where("name_kana LIKE?","%#{params[:search_word]}").page(params[:page]).per(10)
            when "partial_match" then
                @models = User.where("name_kana LIKE?","%#{params[:search_word]}%").page(params[:page]).per(10)
        end

    elsif params[:search_type] == '生年月日'
        case params[:search_method]
            when 'perfect_match' then
                @models = User.where("birthday LIKE?","#{params[:search_word]}").page(params[:page]).per(10)
            when "forward_match" then
                @models = User.where("birthday LIKE?","#{params[:search_word]}%").page(params[:page]).per(10)
            when "backend_match" then
                @models = User.where("birthday LIKE?","%#{params[:search_word]}").page(params[:page]).per(10)
            when "partial_match" then
                @models = User.where("birthday LIKE?","%#{params[:search_word]}%").page(params[:page]).per(10)
        end

    elsif params[:search_type] == '電話番号'
        case params[:search_method]
            when 'perfect_match' then
                @models = User.where("telephone_number LIKE?","#{params[:search_word]}").page(params[:page]).per(10)
            when "forward_match" then
                @models = User.where("telephone_number LIKE?","#{params[:search_word]}%").page(params[:page]).per(10)
            when "backend_match" then
                @models = User.where("telephone_number LIKE?","%#{params[:search_word]}").page(params[:page]).per(10)
            when "partial_match" then
                @models = User.where("telephone_number LIKE?","%#{params[:search_word]}%").page(params[:page]).per(10)
        end

    elsif params[:search_type] == 'メールアドレス'
        case params[:search_method]
            when 'perfect_match' then
                @models = User.where("email LIKE?","#{params[:search_word]}").page(params[:page]).per(10)
            when "forward_match" then
                @models = User.where("email LIKE?","#{params[:search_word]}%").page(params[:page]).per(10)
            when "backend_match" then
                @models = User.where("email LIKE?","%#{params[:search_word]}").page(params[:page]).per(10)
            when "partial_match" then
                @models = User.where("email LIKE?","%#{params[:search_word]}%").page(params[:page]).per(10)
        end

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
