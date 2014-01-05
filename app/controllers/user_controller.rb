class UserController < ApplicationController
    def login
    end
     
    def new
    end
     
    def post_login
        user = User.find_by_email(params[:user][:email])
 
        if user
            redirect_to :controller => "book"
            session["user"] = user.user_name
            session["id"] = user.id
        else
            flash[:notice] = "Please enter a valid login name"
            redirect_to :action =>"login"
        end
    end
     
    def logout
        reset_session
        redirect_to :controller => "book"
    end
 
end
