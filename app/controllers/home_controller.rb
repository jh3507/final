class HomeController < ApplicationController
   def index
   	@goals = Goal.where("user_id=?",current_user.id)
   end
end
