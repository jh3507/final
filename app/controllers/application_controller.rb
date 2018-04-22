class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
   before_action :authenticate_user!
   def index
   	@goals = Goal.where("user_id=?",current_user.id)
   end
end
