class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    def authenticate_admin
      unless current_user.admin_user?
        redirect_to root_path, :alert => "Accesso negado. Permitido apenas a Administradores."
      end
    end

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name , :admin])
    end

    def add_cart
        @cart = Cart.new
        session[:item]=@meal.id
        session[:amount]=quantity

    end
end
