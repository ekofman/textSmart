class UserController < ApplicationController
    def login
    end
     
    def new
      @user = User.new;
    end
     
    def create
      @user = User.new(:user_name=> params[:user][:email], :email => params[:user][:email])
      print "!!!!!!!!!"
      print params[:user][:email]
      if @user.save
        session[:"user"] = @user.get_user_handle
        session["id"] = @user.id
        redirect_to :controller=>"book"
      else
        flash[:notice] = "Please enter a valid @stanford email address" 
        redirect_to :action => "new"
      end
    end

    def post_login
        user = User.find_by_email(params[:user][:email])
 
        if user
            redirect_to :controller => "book"
            session["user"] = user.get_user_handle
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
