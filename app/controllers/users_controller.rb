class UsersController < ApplicationController
    protect_from_forgery with: :exception
    before_action :authenticate_user!

    def index
        @users = User.all
    end
end
