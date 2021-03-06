class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :set_current_order
    protect_from_forgery with: :exception

    def authenticate_admin

      unless current_user.admin_user?
        
            redirect_to root_path, :alert => "Accesso negado. Permitido apenas a Administradores."
        end
    end


    def set_current_order
      session[:current_order] ||= Order.create.id
      #@_current_order = Order.find(session[:current_order])

      @meal = Meal.all
      @meal.each do |m|
    #@_current_order.add_meal(m,0)

      end

     #Order.find(session[:current_order])
    end


    protected

    def configure_permitted_parameters
        added_attrs = [:username, :email, :password, :password_confirmation, :admin, :remember_me]
        devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
        devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end


end
