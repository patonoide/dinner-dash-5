class UsersController < ApplicationController
    protect_from_forgery with: :exception
    before_action :authenticate_user!

    before_action :authenticate_admin

    def index
        @users = User.all
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to users_path, :notice => "Usuário editado."
        else
            redirect_to users_path, :alert => "Usuário já existente ou em branco."
        end
    end
    def new
        @user = User.new
    end
    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to users_path, :notice => "Usuário Criado."
        else
            redirect_to users_path, :alert => "Usuário já existente ou em branco."
        end
    end

    def destroy
        @user = User.find(params[:id])
        if @usser.delete
            redirect_to users_path
        end
    end
end
